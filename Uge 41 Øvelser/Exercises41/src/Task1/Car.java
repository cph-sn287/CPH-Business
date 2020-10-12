package Task1;

public class Car {
    private String make;
    private String model;
    private int year;
    private String bodyStyle;
    private Driver Driver;

    public Car(String make, String model, int year, String bodyStyle)
    {
        this.make = make;
        this.model = model;
        this.year = year;
        this.bodyStyle = bodyStyle;
    }

    public void setMake(String make) {
        this.make = make;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public void setBodyStyle(String bodyStyle) {
        this.bodyStyle = bodyStyle;
    }

    public void setDriver(Task1.Driver driver) {
        Driver = driver;
    }

    public String getModel() {
        return model;
    }

    public int getYear() {
        return year;
    }

    public String getBodyStyle() {
        return bodyStyle;
    }

    public Task1.Driver getDriver() {
        return Driver;
    }

    public String getMake() {
        return make;
    }

    public String toString()
    {
        return("Make: "+make+". Model: "+model+ " ("+ year + "), BodyStyle: "+bodyStyle);
    }
}
