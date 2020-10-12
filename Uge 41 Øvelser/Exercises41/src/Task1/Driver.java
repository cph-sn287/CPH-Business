package Task1;

public class Driver {
    private String name;
    private int age;

    public Driver(String name, int age)
    {
        this.name = name;
        this.age = age;
    }

    public void setName(String Name)
    {
        this.name = name;
    }

    public void setAge(int age)
    {
        this.age = age;
    }

    public String getName()
    {
        return name;
    }

    public int getAge()
    {
        return age;
    }

    public String toString()
    {
        return(" is driven by "+name);
    }

}
