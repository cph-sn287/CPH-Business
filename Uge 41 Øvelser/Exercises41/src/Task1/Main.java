package Task1;

public class Main {

    public static void main(String[] args)
    {
        Driver driver = new Driver("Soren", 27);
        Car car = new Car("NiceMake", "NiceModel", 2010, "niceStyle");

        car.setDriver(driver);

        System.out.println(car.toString());
        System.out.println(car.getDriver().toString());

        Car car2 = new Car("BadMake", "BadModel", 1980, "badStyle");

        car2.setDriver(driver);

        System.out.println(car2.toString());
        System.out.println(car2.getDriver().toString());
    }
}
