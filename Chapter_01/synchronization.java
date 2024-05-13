public class Synchronization {

    // Class representing a shared counter
    private static class Counter {
        private int count = 0;

        // Synchronized method to increment the counter
        public synchronized void increment() {
            count++;
        }

        // Synchronized method to get the current count
        public synchronized int getCount() {
            return count;
        }
    }

    // Thread class that increments the counter
    private static class IncrementerThread extends Thread {
        private Counter counter;
        private int iterations;

        // Constructor to initialize the thread with the counter and number of iterations
        public IncrementerThread(Counter counter, int iterations) {
            this.counter = counter;
            this.iterations = iterations;
        }

        // Run method to execute when the thread starts
        @Override
        public void run() {
            for (int i = 0; i < iterations; i++) {
                counter.increment(); // Increment the counter
            }
        }
    }

  
    public static void main(String[] args) throws InterruptedException {
        Counter counter = new Counter(); // Create a shared counter
        int numThreads = 5; // Number of threads
        int iterationsPerThread = 1000; // Number of iterations per thread

        // Array to store thread instances
        IncrementerThread[] threads = new IncrementerThread[numThreads];

        // Create and start threads
        for (int i = 0; i < numThreads; i++) {
            threads[i] = new IncrementerThread(counter, iterationsPerThread);
            threads[i].start();
        }

        // Wait for all threads to finish
        for (IncrementerThread thread : threads) {
            thread.join();
        }

        // Print the final count
        System.out.println("Final Count: " + counter.getCount());
    }
}
