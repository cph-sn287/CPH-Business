import java.util.ArrayList;
import java.util.Scanner;

public class Main {

    final static int numberOfTaxis = 10;
    static Taxi[] taxis = new Taxi[numberOfTaxis];

    public static void main(String[] args)
    {
        // fill array with taxis
        for (int i=0 ; i<numberOfTaxis ; i++ )
        {
            taxis[i] = new Taxi();
        }

        //start message to user
        welcomeMsg();

        //current taxi index
        int currentTaxi = 0;

        //create scanner
        Scanner scanner = new Scanner(System.in);


        //create while-loop to continously look for input with scanner, untill program is closed
        while (true) {
            String input = scanner.next();

            // next taxi
            if (input.equals("0"))
            {
                currentTaxi++;

                if (currentTaxi>=numberOfTaxis) //if currentTaxi value is out of index-range, reset to 0
                {
                    currentTaxi = 0;
                }
                System.out.println("Taxi " + (currentTaxi+1) + " selected!");

            }

            // start current taxi
            else if (input.equals("1"))
            {
                taxis[currentTaxi].start();

            }

            // stop current taxi
            else if (input.equals("2"))
            {
                taxis[currentTaxi].stop();

                // wait for user to press key and ENTER, then send new welcome msg
                scanner.next();
                welcomeMsg();
            }

            // pause current taxi
            else if (input.equals("3"))
            {
                taxis[currentTaxi].pause();
            }

            // ask for price of current taxi
            else if (input.equals("4"))
            {
                taxis[currentTaxi].askPrice();
            }

            //enable free ride for current taxi
            else if (input.equals("5"))
            {
                taxis[currentTaxi].freeRide();
            }

            else
            {
                System.out.println("Invalid input!");
            }
        }

    }


    public static void welcomeMsg()
    {
        System.out.println("Welcome to Damn Fast Taxis");
        System.out.println();
        System.out.println("(0) Next taxi");
        System.out.println("(1) Start current taxi");
        System.out.println("(2) Stop current taxi");
        System.out.println("(3) Pause current ride");
        System.out.println("(4) Ask for price");
        System.out.println("(5) Free ride");
        System.out.println();
        System.out.println("Choose a <number> and hit “enter”:");
    }

}
