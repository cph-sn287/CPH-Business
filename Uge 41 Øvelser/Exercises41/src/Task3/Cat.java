package Task3;

public class Cat extends Animal {

    public Cat(int numberOfLegs)
    {
        super(numberOfLegs);
    }

    @Override
    public void makeSound() {
        System.out.println("Cat goes meow");
    }
}
