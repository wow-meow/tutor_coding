#!/usr/bin/env python3

# Create the variable offset with an initial value of -6.
offset = -6 
# Code a while loop that keeps running as long as offset is not equal to 0. 
# Inside the while loop: Print out the sentence "correcting...".
# Next, decrease the value of offset by 1. You can do this with offset = offset - 1.
# Finally, still within your loop, print out offset so you can see how it changes.
while offset != 0 :
    print("correcting...")
    if offset > 0 :
        offset = offset - 1
    else :
        offset = offset + 1
    print(f"offset updated: {offset}")

heights = [1.73, 1.68, 1.71, 1.89]
fam     = [1.73, 1.68, 1.71, 1.89]
for index, val in enumerate(heights) :
    print(f"index {index}: {val}")
    
for index, val in enumerate("family") :
    print(f"index {index}: {val.capitalize()}")

# areas list
areas = [11.25, 18.0, 20.0, 10.75, 9.50]
# Code the for loop
for index, val in enumerate(areas, start=1) :
    print(f"room {index}: {val}")

# house list of lists
house = [["hallway", 11.25], 
         ["kitchen", 18.0], 
         ["living room", 20.0], 
         ["bedroom", 10.75], 
         ["bathroom", 9.50]]
# Write a for loop that goes through each sublist of house and prints out 
# the x is y sqm, where x is the name of the room and y is the area of the room.
for val in house :
    print(f"the {val[0]} is {val[1]} sqm")