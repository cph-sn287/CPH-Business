public class Taxi {
    long startTime;
    long executionTime;
    double finalPrice; //final price if freeTimeEnabled
    long pauseTimeStart;
    long pauseTimeEnd;
    long pauseTime = 0;
    boolean paused = false; //whether taxi is currently paused
    boolean hasBeenPaused = false; //whether taxi has been paused in the past
    boolean freeTimeEnabled = false; //whether free time is currently enabled
    boolean firstTimeStarted = true; //whether first time taxi is started


    public Taxi() {

        //startTime = System.currentTimeMillis();
    }

    // starts taxi
    public void start()
    {
        if (firstTimeStarted) //if first time started, start time.
        {
            System.out.println("Taxi started!");
            startTime = System.currentTimeMillis();
            firstTimeStarted = false;
        }

        if (paused)
        {
            System.out.println("Taxi started!");
            updatePauseTime();
            paused = false; //un-pauses taxi
        }
    }

    // stops taxi
    public void stop()
    {
        updatePauseTime();
        updateExecutionTime();

        //Bill printing
        System.out.println("Taxi stopped. Here is your bill:");
        System.out.println();
        System.out.println("Damn Fast Taxis");
        System.out.println("---------------");
        System.out.println("Time: " +executionTime+ " seconds");
        System.out.println("Price per second: 2.25 dollar");
        if (freeTimeEnabled)
        {
            System.out.println("Total price: " + finalPrice);
        }
        else{
            System.out.println("Total price: " + (executionTime)*2.25);
        }
        System.out.println("Press any key followed to ENTER to continue...");

    }


    //puts taxi on pause
    public void pause() {
        System.out.println("Taxi paused!");
        paused = true;
        hasBeenPaused = true;
        pauseTimeStart = System.currentTimeMillis();


    }

    // prints the time, price pr second and current total cost
    public void askPrice()
    {
        updatePauseTime();
        updateExecutionTime();

        System.out.println("Time: " +executionTime+ " seconds");
        System.out.println("Price per second: 2.25 dollar");
        if (freeTimeEnabled)
        {
            System.out.println("Total price: " + finalPrice);
        }
        else{
            System.out.println("Total price: " + (executionTime)*2.25);
        }
    }

    //enables free-ride mode
    public void freeRide()
    {
        // update the finalPrice
        if (!freeTimeEnabled) //ensures we only do this once
        {
            updateExecutionTime();
            finalPrice = executionTime*2.25;
        }

        System.out.println("Free mode enabled!");
        freeTimeEnabled = true;
    }

    public void updateExecutionTime()
    {
        if (startTime>0)
        {executionTime = (System.currentTimeMillis() - startTime - pauseTime)/ 1000;}
        else
        {
            executionTime = 0;
        }
    }


    //calculates potential pauseTime
    public void updatePauseTime()
    {
        // if paused, add to current pauseTime
        if (paused)
        {
            pauseTimeEnd = System.currentTimeMillis();
            pauseTime += (pauseTimeEnd - pauseTimeStart);

            pauseTimeStart = System.currentTimeMillis(); //reset start time to current time
        }
    }
}
