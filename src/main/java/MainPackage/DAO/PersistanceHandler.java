package MainPackage.DAO;

import MainPackage.Person;
import com.microsoft.sqlserver.jdbc.SQLServerDataSource;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PersistanceHandler {

    static Connection connection;

    static {
        try {
            SQLServerDataSource ds = new SQLServerDataSource();
            ds.setUser("hamza@hamzajeljelidbs");
            ds.setPassword("21545049H@m");
            ds.setServerName("hamzajeljelidbs.database.windows.net");
            ds.setPortNumber(1433);
            ds.setDatabaseName("MyPersonsDB");
            ds.setEncrypt(true);
            ds.setTrustServerCertificate(false);
            ds.setLoginTimeout(30);
            connection=  ds.getConnection();
        } catch (Exception e) {
            e.printStackTrace();
            connection= null;
        }
    }

    public static void AddPerson(Person P) {
        String SQL = "INSERT INTO PERSONS VALUES ('"+P.getName()+"','"+P.getBirthDate()+"','"+P.getOccupation()+"');";
        try {
            Statement statement = connection.createStatement();
            statement.executeUpdate(SQL);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void DeleteAll() {
        String SQL = "DELETE FROM PERSONS;";
        try {
            Statement statement = connection.createStatement();
            statement.executeUpdate(SQL);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static List<Person> GetAllPersons() {
        List<Person> people = new ArrayList<Person>();
        String SQL = "SELECT * FROM PERSONS;";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(SQL);
            while (resultSet.next()) {
                Person P = new Person();
                P.setId(resultSet.getInt("ID"));
                P.setName(resultSet.getString("NAME"));
                P.setBirthDate(resultSet.getString("BDATE"));
                P.setOccupation(resultSet.getString("OCCUPATION"));
                people.add(P);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return people;
    }
}
