package Task3;

public class Animal implements AnimalSound {
    private int numberOfLegs;

    public int getNumberOfLegs() {
        return numberOfLegs;
    }

    public Animal(int numberOfLegs) {
        this.numberOfLegs = numberOfLegs;
    }

    public void makeSound()
    {
        System.out.println("Undefined animal makes no sound.");
    }
}
