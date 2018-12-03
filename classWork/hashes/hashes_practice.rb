# Create a hash called new_band.
new_band = {}
# Add a bassist to your new_band hash.
new_band[:bassist] = "John"    
# Find the name of your bassist by accessing the :bassist key in the new_band hash.
p new_band[:bassist]
# Find the value attached to :vocalist in your hash.
p new_band[:vocalist]
# Add a vocalist to your hash.
new_band[:vocalist] = "Emma"
# Add a drummer to your hash.
new_band[:drummer] = "Ian"
# Get all the keys in your Hash. What kind of object does that method return?
p new_band.keys
# Get all the values in your Hash. What kind of object does that method return?
p new_band.values
# Assign a new value to the :vocalist key of your hash.
new_band[:vocalist] = "Jenny"
# How has keys changed after the last step? How has values changed? What
p new_band.keys
p new_band.values

# Multi-dimensional array
a = [[1, 2, 3], [4, 5, 6]]
# what is a.count?
p a.count # 2
# what is a.first.count?
p a.first.count # 3
# how can I access the element 5?
p a[1][1]

# Hash within an Array
italian = [{ pizza: "tasty" }, { calzone: "also tasty" }]
# what is italian.count
italian.count # 2
# what is italian.first.count
p italian.first.count # 1
# how can I access the value "also tasty"
p italian[1][:calzone]

# Hash within a Hash
pets = {
  dog: {
    name: "Sodie",
    weight: "10 pounds"
  },
  cat: {
    name: "Sunshine",
    weight: "15 pounds"
  }
}

# what is pets.count?
pets.count # 2
# what is pets.keys?
p pets.keys # [:dog, :cat]
# what is pets.values?
p pets.values
# how can I access the value "15 pounds"?
p pets[:cat][:weight]

states = {"Oregon" => "OR",
          "Alabama" => "AL",
          "New Jersey" => "NJ",
          "Colorado" => "CO"
}

capitals = {"OR" => "Salem",
            "AL" => "Montgomery",
            "NJ" => "Trenton",
            "CO" => "Denver",
            nil => "Unknown"
}
            
# Level 1: Write some code which given a state name ("Oregon") outputs its capital ("Salem")
p capitals[states["Oregon"]]
# Level 2: Handle the case when a state's information is not known by returning "Unknown"
p capitals[states["Unknown"]]
# Level 3: Now let's go the other way. Given a capital name ("Denver"), return the state name for which it is the capital ("Colorado")
p states.key(capitals.key("Denver"))