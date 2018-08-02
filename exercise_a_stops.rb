stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]

# 1. Add `"Edinburgh Waverley"` to the end of the array
stops.push("Edinburgh Waverley")

# ## OR
# stops[stop.length] = "Edinburgh Waverley"


# 2. Add `"Glasgow Queen St"` to the start of the array
stops.unshift("Glasgow Queen St")
## OR
# stops.insert(0, "Glasgow Queen St")
## this is considered hard-coding and should be avoided

# 3. Add `"Polmont"` at the appropriate point (between `"Falkirk High"` and `"Linlithgow"`)
stops.insert(4, "Polmont")

# 4. Work out the index position of `"Linlithgow"`
stops.index("Linlithgow")

## OR
# stops.find_index("Linlithgow")
## this is an alias name of the 'index' method

# 5. Remove `"Livingston"` from the array using its name
stops.delete("Livingston")

## if we had more than one instances of 'Livingston', this would delete them all

# 6. Delete `"Cumbernauld"` from the array by index
stops.delete_at(2)
## if we don't know its index
# stops.delete_at(stops.find_index("Cumbernauld"))


# 7. How many stops there are in the array?
stops.count
## OR (aliases)
# stops.size
# stops.length

# 8. How many ways can we return `"Falkirk High"` from the array?
stops[2]
stops[-5]
stops.at(2)
stops.at(-5)
## returns an array, use index at the end for the text
stops.values_at(stops.find_index("Falkirk High"))
stops.fetch(2)
stops.fetch(stops.find_index("Falkirk High"))


# 9. Reverse the positions of the stops in the array
stops.reverse!

# 10. Print out all the stops using a for loop
stops.each { |stop| puts stop }


## OR
# for stop in stops
#    p stop
# end
