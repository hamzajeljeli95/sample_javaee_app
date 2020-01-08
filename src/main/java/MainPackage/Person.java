package MainPackage;

public class Person {
    int id;
    String name;
    String BirthDate;
    String Occupation;

    public Person(int id, String name, String birthDate, String occupation) {
        this.id = id;
        this.name = name;
        BirthDate = birthDate;
        Occupation = occupation;
    }

    public Person(String name, String birthDate, String occupation) {
        this.name = name;
        BirthDate = birthDate;
        Occupation = occupation;
    }

    public Person() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBirthDate() {
        return BirthDate;
    }

    public void setBirthDate(String birthDate) {
        BirthDate = birthDate;
    }

    public String getOccupation() {
        return Occupation;
    }

    public void setOccupation(String occupation) {
        Occupation = occupation;
    }
}
