package MainPackage;

import MainPackage.DAO.PersistanceHandler;

public class TestClass {
    public static void main(String[] args) {
        Person P = new Person("Achref","01/01/00","IT");
        PersistanceHandler.AddPerson(P);
    }
}
