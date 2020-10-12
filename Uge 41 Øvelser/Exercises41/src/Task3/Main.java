package Task3;

public class Main {
    public static void main(String[] args)
    {
        Zoo zoo = new Zoo();

        Animal cat = new Cat(4);
        Animal dog = new Dog(4);
        Animal snake = new Snake(0);

        zoo.addAnimal(cat);
        zoo.addAnimal(dog);
        zoo.addAnimal(snake);

        zoo.makeAllSounds();

        zoo.printNumberOfLegs();


    }
}
