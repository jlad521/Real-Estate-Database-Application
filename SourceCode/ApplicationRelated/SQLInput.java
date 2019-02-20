import java.io.File;
import java.io.FileNotFoundException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Scanner;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

public class SQLInput {
   private Connection connection = null;
   private Statement statement = null;
   private Scanner in;
   private SQLInput sqlObj;
   private boolean firstRun = true;
   public String[] views = { "history", "available", "sold", "clients", "agents" };

    // Default constructor for creating basic instance of this object
   public SQLInput(){ in = new Scanner( System.in ); }

    // Create a database connection with given uid and pass
   public SQLInput( String uid, String pass ){
      in = new Scanner( System.in );
      connection = userLogin( uid, pass );
      mainLoop();
   }

    /**
     * main method creates basic class object that will prompt user for
     * database connection information. Once entered, creates a new class
     * object using Connection object with entered credentials
     */
   public static void main( String[] args ){
      SQLInput sql = new SQLInput();
      sql.getLoginCredentials();
   }

    /**
     * "Main Menu" section of the application
     * allows user to enter one of the various views described in manual
     */
   public void mainLoop(){
   
      if  ( firstRun ) {
         System.out.println( "Hello, welcome to big data bytes real estate application. " );
         System.out.println( "To see the manual, type: man" );
         firstRun = false;
      }
   
      while( true ){
      	// Get user input from stdin
         System.out.print( "Enter main menu command: " );
         String input = in.nextLine().toLowerCase();
         checkCommand( input );
      
            // Enter views
         for ( String s : views ) {
            if 	( input.equals( s ) ) { viewSwitcher( input ); }
         }
      	// Enter update mode
         if (input.equals( "-u" )) {
            try { updateMode(); }
            catch ( SQLException e ) { e.getMessage(); }
         }
         
         //enter direct query mode
         else if ( input.equals( "-sql" ) ){
            try { directQueryMode(); }
            catch ( SQLException e ) { e.getMessage(); }
         } else { System.out.println( "Error... Unrecognized command. Try Again" ); }
      }
   }

    /**
     * ensures connections are closed before exiting program
     */
   public void exitProgram(){
      logoffUser();
      System.exit( 0 );
   }

    /**
     * closes user connection to the database
     */
   public void logoffUser(){
      firstRun = true;
      try {
         if (connection != null) { connection.close(); }
         if (statement != null)  { statement.close(); }
      } catch ( SQLException ex ) {
         System.out.println( "The following exception has occured: " + ex.getMessage() );
      }
   }

    /**
     * asks for user credentials to create Connection object (executed in constructor)
     */
   public void getLoginCredentials(){
      logoffUser();
      System.out.println( "Enter username" );
      String uid = in.nextLine();
      System.out.println( "Enter password" );
      String pw = in.nextLine();
      sqlObj = new SQLInput( uid, pw );
   }

     /**
     * Prints the manual text file located in current directory via stoud
     */
   public void man() {
      File file = new File( "man.txt" );
      Scanner sc = null;
      try { sc = new Scanner( file ); }
      catch (FileNotFoundException e) { e.getMessage(); }
      while ( sc.hasNextLine() ) System.out.println( sc.nextLine() );
   }

     /**
     * creates a Connection object to the mysql database
     *
     * @param userName  client's username
     * @param password  client's password
     * @return connection object with entered credentials
     */
   public Connection userLogin( String userName, String password ){
      System.out.println( "Enter the database with which you wish to connect:" );
      String dbName = in.nextLine();
      try{	
            // This is currently configured for db running on local machine
         String url = "jdbc:mysql://localhost:3306/" + dbName;
         //Class.forName ( "com.mysql.jdbc.Driver" ).newInstance ();
         connection = DriverManager.getConnection ( url, userName, password );
         System.out.println ( "Database connection established to " + dbName );
      }
      catch ( Exception e ){
         System.err.println( "Cannot connect to database server" );
         System.out.println( "Try login again? y/n" );
         if( in.nextLine().contains( "y" ) ) { this.getLoginCredentials(); } 
      }
      return connection;
   }

    /**
     * Checks for navigational commands, like go back to main menu, quit
     * application, logoff, print manual
     *
     * @param input is the command user typed into terminal
     */
   public void checkCommand( String input ){
      if ( input.equals( "back" ) || input.equals( "-b" ) ) { mainLoop(); }
      else if ( input.equals( "man" ) ) { man(); mainLoop(); }
      else if ( input.equals( "quit" ) || input.equals( "-q" ) ||
      		input.equals( "-e" ) || input.equals( "exit" ) ) { exitProgram(); }
      else if ( input.equals( "logoff" ) || input.equals( "-l" ) )  { getLoginCredentials(); }
   }

    /**
     * Takes user input from command line and returns key to specific query and
     * any additional query specifics, like office name or agent name
     *
     * @param query is the command the user typed into terminal
     * @return string array holding query key and specific queries.
     * theQuery[0] hold query key, rest hold query specifics
     */
	
   public String[] getQuery( String query ){
      String[] theQuery = new String[4];
      theQuery[0] = "";
      int specificCount = 0;
      checkCommand( query );
      String[] args = query.split( " " );
      theQuery[0] += args[0];
        //queryIndex += args[0];  //first word in command will always start with a -
      for( int i =1; i < args.length; i++ ){
         if ( args[i].charAt(0)  == '-' ){
            theQuery[0] += " " + args[i];
         }
         else if ( specificCount == 0 ) {
            theQuery[1] = "" + args[i];
            //case where specific command is two strings, like cole llc (Do not allow 3 spec args)
            if( i+1 < args.length && args[i+1].charAt( 0 ) != '-' ) {
               theQuery[1] += "" + args[i+1];
               i++;
            }
            specificCount++;
            continue;
         }
         else if ( specificCount == 1 ) {
            theQuery[2] = "" + args[i];
            if( i+1 < args.length && args[i+1].charAt( 0 ) != '-' ) {
               theQuery[2] += "" + args[i+1];
               i++;
            }
            specificCount++;
            continue;
         }
         else if ( specificCount == 2 ) {
            theQuery[3] = "" + args[i];
            if( i+1 < args.length && args[i+1].charAt( 0 ) != '-' ) {
               theQuery[3] += "" + args[i+1];
               i++;
            }
            specificCount++;
            continue;
         }
         else if ( specificCount > 2 ){
            System.out.println( "Error, too many arguments" );
         }
      }
      return theQuery;
   }

    /**
     * returns true if -min was in the user's terminal command
     *
     * @param cmd is the user's terminal command
     * @return true if -min was in the command
     */
   public boolean checkMinPrint( String cmd ){ 
      return cmd.contains( "min" ) || cmd.contains( "-min" ); }

    /**
     * returns terminal command with -min removed to reduce the number of cases
     * in the switch statement
     *
     * @param cmd is the user's terminal command
     * @return string with -min removed
     */
   public String removeMin( String cmd ){ 
      return cmd.replace( " -min", "" ); }

/*--------------------------------------------------------------------------------------------------------------------*/
/*--------------------------------------------------------------------------------------------------------------------*/
/*--------------------------------------------------------------------------------------------------------------------*/

    /**
     * contains all logic to stay inside the avaialable properties view
     * checks for navigation commands and finds the appropriate prepared
     * statement for the user command, with query specifics when necessary
     */
   public void availablePropertiesCommand(){
      PreparedStatement ps = null;
      String[] command = new String[4];
      String cmd = "";
      boolean isMinPrint = false;
      while( true ){
         System.out.print( "Enter available properties command: " );
         String input = in.nextLine().toLowerCase();
         checkCommand( input );
            // Replace -min with empty string before we split and get the query
         if( checkMinPrint( input ) ) {
            cmd = removeMin( input );
            isMinPrint = true;
         } else{ cmd = input; }
      
            // Parse out specifics to pass to command query functions
         command = getQuery( cmd );
      
            // Switch on full command (minus -min, if present)
         switch( command[0] ){
            case "-mostexpensive":
               ps = propertiesMostExpensive();
               break;
            
            case "-mostexpensive -byoffice":
               ps = propertiesMostExpensiveByOffice( command[1] );
               break;
            case "-totalnumber":
               ps = totalPropertyForSale();
               break;
            case "-totalnumber -byoffice":
               ps = totalPropertyForSaleByOffice( command[1] );
               break;
            case "-byoffice":
               ps = forSaleByOffice( command[1] );
               break;
            case "-over":
               ps = forSaleOver( command[1] );
               break;
            case "-under":
               ps = forSaleUnder( command[1] );
               break;
            case "-bycity":
               ps = forSaleByCity( command[1] );
               break;
            case "-over -under":
               ps = forSaleOverUnder( command[1], command[2] );
               break;
            case "-over -under -byoffice":
               ps = forSaleOverUnderByOffice( command[1], command[2], command[3] );
               break;
            case "-over -under -bycity":
               ps = forSaleOverUnderByCity( command[1], command[2], command[3] );
               break;
            case "-avgprice -bycity":
               ps = forSaleAvgPriceByCity( command[1] );
               break;
            case "-avgprice -byoffice":
               ps = forSaleAvgPriceByOffice( command[1] );
               break;
            default:
               System.out.println( "Error... Unsupported command: Please try again. " );
         }
         genericExecuteQuery( ps, isMinPrint );
      }
   }

    /**
     * contains all logic to stay inside the sale history view
     * checks for navigation commands and finds the appropriate prepared
     * statement for the user command, with query specifics when necessary
     */
   public void saleHistoryCommand(){
      PreparedStatement ps = null;
      String[] command = new String[4];
      String cmd = "";
      boolean isMinPrint = false;
      while(true){
         System.out.print( "Enter sale history command: " );
         String input = in.nextLine().toLowerCase();
            // Parse out specifics to pass to command query functions
         command = getQuery( cmd );
         switch( command[0] ){
            case "-total":
               ps = totalSales();
            
                //lists out all offices and the cumulative sales numbers for each office
            case "-total -byoffice -asc":
               ps = totalSalesByOfficeAsc( command[ 1 ] );
            
                //list out all agents and the cumulative sales numbers for each agent
            case "-total -byagent -asc":
               ps = totalSalesByAgentAsc( command[ 1 ] );
            
                //lists out all offices and the cumulative sales numbers for each office
            case "-total -byoffice -desc":
               ps = totalSalesByOfficeDesc( command[ 1 ] );
            
                //lists out all offices and the cumulative sales numbers for each office
            case "-total -byagent -desc":
               ps = totalSalesByAgentDesc( command[ 1 ] );
            
            default:
               System.out.println( "Error... Unsupported command: Please try again. " );
         }
         genericExecuteQuery( ps, false );
      }
   }

    /**
     * contains all logic to stay inside the sold properties view
     * checks for navigation commands and finds the appropriate prepared
     * statement for the user command, with query specifics when necessary
     */
   public void soldPropertiesCommand(){
      PreparedStatement ps = null;
      String[] command = new String[4];
      String cmd = "";
      boolean isMinPrint = false;
      while(true){
         System.out.print( "Enter sold properties command: " );
         String input = in.nextLine().toLowerCase();
         checkCommand( input );
            // Replace -min with empty string before we split and get the query
         if( checkMinPrint( input ) ) {
            cmd = removeMin( input );
            isMinPrint = true;
         } else{ cmd = input; }
            // Parse out specifics to pass to command query functions
         command = getQuery( cmd );
      
         switch( command[0] ){
            case "-all":
               ps = soldPropertiesAll();
            
            case "-all -byoffice":
               ps = soldPropertiesAllByOffice(command[1]);
            
            case "-since":
               ps = soldPropertiesSince(command[1]);
            
            case "-since -byoffice":
               ps = soldPropertiesSinceByOffice(command[1], command[2]);
            
            default:
               System.out.println( "Error .. Unsupported command: Please try again. " );
         }
         genericExecuteQuery( ps, isMinPrint );
      }
   }

    /**
     * contains all logic to stay inside the client list view
     * checks for navigation commands and finds the appropriate prepared
     * statement for the user command, with query specifics when necessary
     */
   public PreparedStatement clientListCommand(){
      PreparedStatement ps = null;
      String[] command = new String[4];
      String cmd = "";
      boolean isMinPrint = false;
      while(true){
         System.out.print( "Enter sold properties command: " );
         String input = in.nextLine().toLowerCase();
         checkCommand( input );
      
         switch( command[0] ){
            case "-allBuyers":
               ps = allBuyers();
            
            case "-allBuyers -byoffice":
               ps = allBuyersByOffice(command[1]);
            
            case "-seller":
               ps = sellerInfo( command[1] );
            
            case "-buyer":
               ps = buyerInfo( command[1] );
            
            default:
               System.out.println("Error .. Unsupported command. Please try again. ");
         }
         genericExecuteQuery( ps, false );
      }
   }

    /**
     * contains all logic to stay inside the agent list view
     * checks for navigation commands and finds the appropriate prepared
     * statement for the user command, with query specifics when necessary
     */
   public PreparedStatement agentListCommand(){
      PreparedStatement ps = null;
      String[] command = new String[4];
      String cmd = "";
      boolean isMinPrint = false;
      while(true){
         System.out.print( "Enter sold properties command: " );
         String input = in.nextLine().toLowerCase();
         checkCommand( input );
      
         switch( command[0] ){
            case "-primaryOffice":
               ps = primaryOffice();
            
            case "-mostPropertySold -byoffice":
               ps = mostPropSold(command[1]);
            
            case "-list":
               ps = listAllAgents();
            
            case "-list -byoffice":
               ps = listAllAgentsByOffice(command[1]);
            
            case "-sales -byagent":
               ps = salesByAgent(command[1]);
            
            default:
               System.out.println("Error .. Unsupported command. Please try again. ");
         }
         genericExecuteQuery( ps, false );
      }
   }

/*--------------------------------------------------------------------------------------------------------------------*/
/*--------------------------------------------------------------------------------------------------------------------*/
/*--------------------------------------------------------------------------------------------------------------------*/

    // Call JDBC on an explicit SQL query to be entered by user
    /**
     * Allows user to enter specific SQL query to the database in case user
     * wants to see query result of a non-supported command
     */
   public void directQueryMode() throws SQLException {
      while( true ) {
         boolean minPrint = false;
         System.out.println( "Enter direct SQL query: " );
         String input = in.nextLine();
         checkCommand( input );
         if( checkMinPrint( input ) ) { removeMin( input ); minPrint = true; }
         try ( Statement stmt = connection.createStatement(); ) {
            stmt.executeQuery( input );
            ResultSet rs = stmt.getResultSet();
            printQueryResults( rs, minPrint );
         }
      }
   }

    /**
     * Allows user to enter update mode
     * Intended for use by the system adminstrator
     */
   public void updateMode() throws SQLException{
      while( true ){
         System.out.println( "Enter SQL update: " );
         String input = in.nextLine().toLowerCase();
         checkCommand( input );
      
         try ( Statement stmt = connection.createStatement(); ) {
            int count = stmt.executeUpdate( input );
            System.out.println( "Database updated successfully" );
            System.out.println ( count + " rows were inserted" );
         } catch (SQLException e) {
            System.out.println( "SQL Error " + e );
            System.out.println( "Database not updated" );
         }
      }
   }

	// Generic View Switcher so that we don't need separate methods for each
    /**
     * Directs command user into appropriate view method
     *
     * @param view is the name of the view user wants to enter
     */
   public void viewSwitcher( String view ){
      switch( view ){
         case "sold":
            soldPropertiesCommand();
         case "available":
            availablePropertiesCommand();
         case "history":
            saleHistoryCommand();
         case "clients":
            clientListCommand();
         case "agents":
            agentListCommand();
         default:
            System.out.println( "Unrecognized command: please try again" );
            mainLoop();
      }
   }

    /**
     * Prints JDBC executeQuery result to stoud
     * Also supports minimal print out for housing properties
     *
     * @param rs   the ResultSet object from the JDBC execute
     * @param minPrint is false for printing all attributes, true for mininimal
     */
   public void printQueryResults( ResultSet rs, boolean minPrint ) {
   
      if( minPrint ) {
         try{
          	// Gets meta-data so we can tell column names
            ResultSetMetaData rsmd = rs.getMetaData();
            int columnCount = rsmd.getColumnCount();
         
          	// Prints out all column names
            for ( int i = 1; i <= columnCount; i++ ) {
               if( rsmd.getColumnLabel( i ) == "address" ||
               		rsmd.getColumnLabel( i ) == "price" ){
                  System.out.print( rsmd.getColumnLabel( i ) + "\t" );
               }
            }
            System.out.println();
            System.out.println( "--------------------------------------------" +
               	"----------------------------------" );
         
          	// Prints out all rows inside the current page of resultSet
            do {
               for (int i = 1; i <= columnCount; i++) {
                  if( rsmd.getColumnLabel( i ) == "address" ||
                  			rsmd.getColumnLabel( i ) == "price" ){
                     System.out.print(rs.getObject( i ) + "\t");
                  }
               }
               System.out.println();
            } while (rs.next());
         
         }catch( SQLException sqle ) { System.out.println( "Exception : " + sqle ); }
      }
      else{
         try{
          	// Gets meta-data so we can tell column names
            ResultSetMetaData rsmd = rs.getMetaData();
            int columnCount = rsmd.getColumnCount();
         
          	// Prints out all column names
            for ( int i = 1; i <= columnCount; i++ ) {
               System.out.print( rsmd.getColumnLabel(i) + "\t" );
            }
                
            System.out.println();
            System.out.println( "--------------------------------------------" +
               	"----------------------------------" );
         
          	// Prints out all rows inside the current page of resultSet
            while ( rs.next() ){
               for ( int i = 1; i <= columnCount; i++ ) {
                  System.out.print( rs.getObject( i ) + "\t" );
               }
               System.out.println();
            }
         
         }catch( SQLException sqle ) { System.out.println( "Exception : " + sqle ); }
      }
   }
    
    // Executes statement and calls method to print query results
    /**
     * executes a prepared statement with this Connection object
     *
     * @param stmt  is the sql statement
     * @param isMinPrint is true if user wants minimal print; false is all attributes in select and is default
     * @return resultSet from the sql query
     */
   public ResultSet genericExecuteQuery( PreparedStatement stmt, boolean isMinPrint ) {
      ResultSet rset = null;
      try {
         rset = stmt.executeQuery();
         printQueryResults( rset, isMinPrint );
      } catch( SQLException sqle ) { System.out.println( "Exception : " + sqle ); }
      return rset;
   }

/*--------------------------------------------------------------------------------------------------------------------*/
/*--------------------------------------------------------------------------------------------------------------------*/
/*--------------------------------------------------------------------------------------------------------------------*/

    // No-argument SQL query
   public PreparedStatement prepSmnt( String query ) {
      PreparedStatement p = null;
      try { p = connection.prepareStatement( query ); }
      catch ( SQLException e ) { e.getCause(); }
      return p;
   }
    
    // Single argument, String
   public PreparedStatement prepSmntSingle( String query, String querySpecA ) {
      PreparedStatement p = null;
      try {
         p = connection.prepareStatement( query );
         p.setString( 1, querySpecA );
      }
      catch ( SQLException e ) { e.getCause(); }
      return p;
   }

   public PreparedStatement prepSmntSingleDate( String query, String date ){
      PreparedStatement p = null;
      try {
         p = connection.prepareStatement( query );
         p.setDate( 1, java.sql.Date.valueOf( date ) );
      }
      catch ( SQLException e ) { e.getCause(); }
      return p;
   }

    // Single argument, double
   public PreparedStatement prepSmntSingle( String query, double querySpecA ) {
      PreparedStatement p = null;
      try {
         p = connection.prepareStatement( query );
         p.setDouble( 1, querySpecA );
      }
      catch ( SQLException e ) { e.getCause(); }
      return p;
   }

    /* Two-argument, String, String */
   public PreparedStatement prepSmntDouble( String query, String querySpecA, String querySpecB ) {
      PreparedStatement p = null;
      try {
         p = connection.prepareStatement( query );
         p.setString( 1, querySpecA );
         p.setString( 2, querySpecB );
      }
      catch ( SQLException e ) { e.getCause(); }
      return p;
   }

    // Two argument, Double, String
   public PreparedStatement prepSmntDouble( String query, double querySpecA, String querySpecB ) {
      PreparedStatement p = null;
      try {
         p = connection.prepareStatement( query );
         p.setDouble( 1, querySpecA );
         p.setString( 2, querySpecB );
      }
      catch ( SQLException e ) { e.getCause(); }
      return p;
   }

    // Two argument, Double, String
   public PreparedStatement prepSmntDouble( String query, double querySpecA, double querySpecB ) {
      PreparedStatement p = null;
      try {
         p = connection.prepareStatement( query );
         p.setDouble( 1, querySpecA );
         p.setDouble( 2, querySpecB );
      }
      catch ( SQLException e ) { e.getCause(); }
      return p;
   }
    
    /* Triple argument, All Strings */
   public PreparedStatement prepSmntTriple( String query, String querySpecA, String querySpecB, String querySpecC ) {
      PreparedStatement p = null;
      try {
         p = connection.prepareStatement( query + querySpecA );
         p.setString( 1, querySpecA );
         p.setString( 2, querySpecB );
         p.setString( 3, querySpecC );
      
      }
      catch ( SQLException e ) { e.getCause(); }
      return p;
   }

    // Triple argument, Double, double, string
   public PreparedStatement prepSmntTriple( String query, double querySpecA, double querySpecB, String querySpecC ) {
      PreparedStatement p = null;
      try {
         p = connection.prepareStatement( query + querySpecA );
         p.setDouble( 1, querySpecA );
         p.setDouble( 2, querySpecB );
         p.setString( 3, querySpecC );
      
      }
      catch ( SQLException e ) { e.getCause(); }
      return p;
   }

   public PreparedStatement prepSmntDoubleDate( String query, String date, String querySpecA ){
      PreparedStatement p = null;
      try {
         p = connection.prepareStatement( query );
         p.setDate( 1, java.sql.Date.valueOf( date ) );
         p.setString( 2, querySpecA );
      }
      catch ( SQLException e ) { e.getCause(); }
      return p;
   }
 
/*--------------------------------------------------------------------------------------------------------------------*/
/*--------------------------------------------------------------------------------------------------------------------*/
/*--------------------------------------------------------------------------------------------------------------------*/

    /**
     * returns PreparedStatement for JDBC query execution
     * @return the specific sql query for the command user typed
     */
   public PreparedStatement propertiesMostExpensive(){
      return prepSmnt( "select * FROM availableProperty ORDER BY asking_price limit 1;" );
   }

   public PreparedStatement propertiesMostExpensiveByOffice( String office ){
      return prepSmntSingle( "select * from availableProperty where office = ? ORDER BY asking_price limit 1;", office );
   }

   public PreparedStatement totalPropertyForSale(){
      return prepSmnt( "select count(*) as 'Total Number of Properties' FROM availableProperty;" );
   }

   public PreparedStatement totalPropertyForSaleByOffice( String office ){
      return prepSmntSingle( "select count(*) as 'Total Number of Properties' FROM availableProperty WHERE office = ?;", office );
   }

   public PreparedStatement forSaleByOffice( String office ){
      return prepSmntSingle( "SELECT * FROM availableproperty WHERE office = ?;", office );
   }

   public PreparedStatement forSaleOver( String ask ){
      return prepSmntSingle( "SELECT * FROM availableproperty WHERE asking_price > ?;", 
            Double.parseDouble( ask ) );
   }

   public PreparedStatement forSaleUnder( String ask ){
      return prepSmntSingle( "SELECT * FROM availableproperty WHERE asking_price < ?;", 
            Double.parseDouble( ask ) );
   }

   public PreparedStatement forSaleByCity( String office ){
      return prepSmntSingle( "SELECT * FROM availableproperty WHERE city_name = ?;", office );
   }

   public PreparedStatement forSaleOverUnder( String over, String under ){
      return prepSmntDouble( "SELECT * FROM availableproperty WHERE asking_price between ? and ?;", 
            Double.parseDouble( over ), Double.parseDouble( under ) );
   }

   public PreparedStatement forSaleOverUnderByOffice( String over, String under, String office ){
      return prepSmntTriple( "SELECT * FROM availableproperty WHERE asking_price between ? and ? and office = ?;", 
            Double.parseDouble( over ), Double.parseDouble( under ), office );
   }

   public PreparedStatement forSaleOverUnderByCity( String over, String under, String city ){
      return prepSmntTriple( "SELECT * FROM availableproperty WHERE asking_price between ? and ? and city_name = ?;", 
            Double.parseDouble( over ), Double.parseDouble( under ), city );
   }

   public PreparedStatement forSaleAvgPriceByCity( String city ){
      return prepSmntSingle( "SELECT avg(asking_price) FROM availableproperty WHERE city_name = ?;", city );
   }

   public PreparedStatement forSaleAvgPriceByOffice( String office ){
      return prepSmntSingle( "SELECT avg(asking_price) FROM availableproperty WHERE office = ?;", office );
   }

   public PreparedStatement totalSales(){
      return prepSmnt( "SELECT * WHERE soldproperty;" );
   }

   public PreparedStatement totalSalesByOfficeAsc( String location ){
        // return prepSmntSingle("SELECT * FROM soldproperty order by office;");  
      return prepSmntSingle( "select * from soldProperty WHERE location = ?;", location );
   }

   public PreparedStatement totalSalesByAgentAsc( String agent ){
      return prepSmntSingle( "SELECT * FROM soldproperty ORDER BY agent_Lname;", agent );
   }

   public PreparedStatement totalSalesByOfficeDesc( String location ){
        // return prepSmntSingle( "SELECT * FROM soldproperty order by office desc;", location );
      return prepSmntSingle( "SELECT * FROM soldproperty WHERE office = ? desc;", location );  
   }

   public PreparedStatement totalSalesByAgentDesc( String agent ){
      return prepSmntSingle( "SELECT * FROM soldproperty ORDER BY agent_Lname desc;", agent );
   }

    // Requires date format mm-dd-yyyy for java to parse properly
   public PreparedStatement totalSalesSince( String date ) {
      String query = "select * from soldProperty WHERE date_signed <= ?;";
      return prepSmntSingleDate( query, date );
   }
    
   public PreparedStatement totalSalesSinceByOffice( String date, String office ) {
      String query = "select * from soldProperty WHERE date_signed <= ?;";
      return prepSmntDoubleDate( query, date, office );
   }

   public PreparedStatement allBuyers(){
      return prepSmnt( "SELECT * FROM clientlist WHERE client_type = 1;" );
   }

   public PreparedStatement allBuyersByOffice( String office ){
      return prepSmntSingle( "SELECT * FROM clientlist WHERE client_type = 1 and office = ?;", office );
   }

    /**
     * returns PreparedStatement for JDBC query execution
     * @param seller name
     * @return the specific sql query for the command user typed
     */
   public PreparedStatement sellerInfo( String seller ){
      return prepSmntSingle( "SELECT * FROM clientlist WHERE client_type = 0 and client_Fname = ?", seller );
   }

    /**
     * returns PreparedStatement for JDBC query execution
     * @param buyer name
     * @return the specific sql query for the command user typed
     */
   public PreparedStatement buyerInfo( String buyer ){
      return prepSmntSingle( "SELECT * FROM clientlist WHERE client_type = 1 and client_Fname = ?;", buyer );
   }

   public PreparedStatement primaryOffice() {
      return prepSmnt( "SELECT agent_name, primary_office FROM agentlist;" );
   }

   public PreparedStatement mostPropSold( String office ) {
      return prepSmntSingle( "SELECT office , count(*) as 'number of sales' FROM bigdatabyte.salehistory "
           + "GROUP BY office ORDER BY count(*) desc limit 1;", office );
   }

   public PreparedStatement listAllAgents() {
      return prepSmnt( "SELECT * FROm agentlist;" );
   }

   public PreparedStatement listAllAgentsByOffice( String office ) {
      return prepSmntSingle( "SELECT * FROM agentlist WHERE office = ?;", office );
   }

   public PreparedStatement salesByAgent( String agent ){
      return prepSmntSingle( "SELECT * FROM salehistory WHERE agent_Fname = ?;", agent );
   }

   public PreparedStatement salesByAgentByOfficeDesc( String office ){
      return prepSmntSingle( "SELECT * FROM salehistory WHERE office = ? order by agent_Lname desc;", office );
   }

   public PreparedStatement salesByAgentByOfficeAsc( String office ){
      return prepSmntSingle( "SELECT * FROM salehistory WHERE office = ? order by agent_Lname;", office );
   }

   public PreparedStatement soldPropertiesAll(){
      return prepSmnt( "SELECT * FROM soldproperty;" );
   }

   public PreparedStatement soldPropertiesAllByOffice( String office ){
      return prepSmntSingle( "SELECT * FROM soldproperty WHERE office = ?;", office );
   }

   public PreparedStatement soldPropertiesSince( String date ){
      return prepSmntSingle( "SELECT * FROM soldproperty WHERE date_signed > ?;", date );
   }

   public PreparedStatement soldPropertiesSinceByOffice( String date, String office ){
      return prepSmntDouble( "SELECT * FROM soldproperty WHERE date_signed > ? and office = ?;", date , office );
   }
       
}