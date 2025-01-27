/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night
VAR stamina = 5 // Player starts with 5 stamina



-> seashore

== seashore ==
You are sitting on the beach. 


It is { advance_time()}


+ [Stroll down the beach] -> beach2
+ [Wait] -> seashore
+ [Rest] -> resting
+ {time < 2 and stamina > 0 } [Go for a Swim] -> swim
+ {time < 2 and stamina > 0 } [Go on a Hike ] -> hiking

-> DONE

== beach2 ==
This is further down the beach.

It is {advance_time()}
* {time == 1} [Pick up some seashells] ->shells
+ [Stroll down the beach] -> seashore

== shells ==
You pick up the shells
-> beach2


== swim ==
You go for a swim in the refreshing ocean water. 
The cool waves wash over you, making you feel great.

Swimming uses some of your stamina

Stamina bar -1 {stamina_bar()} 
+ [Back to the Beach] -> seashore


== hiking ==
You begin a hike through a nearby trail. The fresh air is great and gives you a sense of calmness.

{stamina_bar()}  

After the hike, you feel accomplished.

 {stamina_bar < 3: | Looks like you need a rest before you can go back.}

+ [Rest] -> resting
+ {stamina > 3} [Back to the Beach]


->seashore
-> DONE

    
== resting ==
You take quick nap for some rest.

You recovered your stamina!

{& --You are dreaming about cows-| -You are dreaming about flying high above the ground--| --You are dreaming about swimming in deep water-- | --You are dreaming about exploring a cave--}
~ stamina = 5 
+ [Wake up] ->seashore
-> DONE
    
    
    
    







== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    
    
        
    ~ return time
    
    
    
    
    
== function stamina_bar == 
    ~ stamina = stamina - 1 
    
    {
     -stamina < 0:
     ~ stamina = 0
    
    
    }
    {
    - stamina < 0 or stamina < 1:
    ~ return "Your stamina is depleted! Get some rest"
    
    
    }
    
    {
    -stamina == 2:
    ~ return "You might need to consider some rest in order to continue."
    
    }
    
    
    {
    -stamina > 3:
    ~ return "Your feeling pretty energized still"
    }


    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
