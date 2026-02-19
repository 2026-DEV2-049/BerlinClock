## BerlinClock
The Berlin Clock (Mengenlehreclock or Berlin Uhr) is a clock that tells the time using a series of illuminated coloured blocks.

The top lamp blinks to show seconds- it is illuminated on even seconds and off on odd seconds.

The next two rows represent hours. The upper row represents 5 hour blocks and is made up of 4 red lamps. The lower row represents 1 hour blocks and is also made up of 4 red lamps.

The final two rows represent the minutes. The upper row represents 5 minute blocks, and is made up of 11 lamps- every third lamp is red, the rest are yellow. The bottom row represents 1 minute blocks, and is made up of 4 yellow lamps.

# This project covers two features:
Feature 1 - Converting Digital Time to Berlin Time

Feature 2 - Converting Berlin Time to Digital Time

# Limitation:
The convesion from Berlin Time to Digital TIme (feature 2) has some limitations:

The seconds could not be translated correctly with the current input from the Berlin time.

To solve this, additional information should be provided from the BerlinClock's seconds input.

# Current assumption to solve this limitation: 
Seconds from the converted Digital Time (Feature 2) will either be 0 or 1 seconds !

# Architecture:
One module named Core contains all the conversion's logic.

The Core module has a 100% test coverage which demonstrates all use-cases from features 1 and 2.

The main-application consumes the Core module for performing all conversions.

The Core module is the only dependency. 
