package Task2;

public class Main {

    public static void main (String[] args)
    {
        Room room1 = new Room(4, 2, 2,2);
        Room room2 = new Room(8,4,4,4);
        Room room3 = new Room(12,6,6,6);

        Room[] rooms = new Room[]{room1,room2,room3};

        Building building = new Building(rooms,7,3,false);

        int totalLambs = 0;
        for (Room room : rooms)
        {
            totalLambs+= room.getNumberOfLamps();
        }
        System.out.println("Total number of lamps is: " +totalLambs);

        if(building.getNumberOfFloors()>building.getRooms().length)
        {
            System.out.println("This is an odd building");
        }
    }
}
