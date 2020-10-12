package Task3;

import java.util.ArrayList;

public class Zoo {
    private ArrayList<Animal> animals = new ArrayList<>();

    public void makeAllSounds()
    {
        for (Animal animal : animals) {
            animal.makeSound();
        }
    }

    public void addAnimal(Animal animal)
    {
        animals.add(animal);
    }

    public void printNumberOfLegs()
    {
        int legs = 0;

        for (Animal animal : animals)
        {
            legs+= animal.getNumberOfLegs();
        }

        System.out.println("Total number of legs in my zoo: "+legs);
    }
}
