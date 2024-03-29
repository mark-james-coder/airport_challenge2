# Airport Challenge

#### Technologies: Ruby, Rspec

```
        ______
        _\____\___
=  = ==(____MA____)
          \_____\___________________,-~~~~~~~`-.._
          /     o o o o o o o o o o o o o o o o  |\_
          `~-.__       __..----..__                  )
                `---~~\___________/------------`````
                =  ===(_________)

```


## Makers Academy - Week 1 Solo Weekend Project (Revisited)

## The Challenge

I revisted this challenge and completed it again as a refresher. This time around, I have automated my feature tests - found in spec/feature_spec.rb. These tests output a story, whilst testing a majority of the features of the code, before ending in an intentional runtime error.

We have a request from a client to write the software to control the flow of planes at an airport. The planes can land and take off provided that the weather is sunny. Occasionally it may be stormy, in which case no planes can land or take off.  

### Features:

1 - Creation of an airport with a set or default capacity 2 - Creation of a plane 3 - Landing of a plane 4 - Takeoff of a plane 5 - Landing of planes dependent on not exceeding capacity of airport 6 - Landing and takeoff of planes dependent on weather conditions 7 - Edge cases of the landing of a landed plane or the takeoff of a flying plane are prevented through guard clauses.

I used a random number generator to set the weather (it is normally sunny but on rare occasions it may be stormy). In my tests of the airport, I used doubles for the plane and weather in order to remove test dependence on the plane and weather objects. The code passes all tests with 100% coverage and Rubocop reports no offences.


Here are the user stories that were worked out in collaboration with the client:

### User Stories

```
As an air traffic controller
So I can get passengers to a destination
I want to instruct a plane to land at an airport

As an air traffic controller
So I can get passengers on the way to their destination
I want to instruct a plane to take off from an airport and confirm that it is no longer in the airport

As an air traffic controller
To ensure safety
I want to prevent landing when the airport is full

As the system designer
So that the software can be used for many different airports
I would like a default airport capacity that can be overridden as appropriate

As an air traffic controller
To ensure safety
I want to prevent takeoff when weather is stormy

As an air traffic controller
To ensure safety
I want to prevent landing when weather is stormy
```
