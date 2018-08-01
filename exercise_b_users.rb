users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :lottery_numbers => [6, 12, 49, 33, 45, 20],
    :home_town => "Stirling",
    :pets => [
    {
      :name => "fluffy",
      :species => "cat"
    },
    {
      :name => "fido",
      :species => "dog"
    },
    {
      :name => "spike",
      :species => "dog"
    }
  ]
  },
  "Erik" => {
    :twitter => "eriksf",
    :lottery_numbers => [18, 34, 8, 11, 24],
    :home_town => "Linlithgow",
    :pets => [
    {
      :name => "nemo",
      :species => "fish"
    },
    {
      :name => "kevin",
      :species => "fish"
    },
    {
      :name => "spike",
      :species => "dog"
    },
    {
      :name => "rupert",
      :species => "parrot"
    }
  ]
  },
  "Avril" => {
    :twitter => "bridgpally",
    :lottery_numbers => [12, 14, 33, 38, 9, 25],
    :home_town => "Dunbar",
    :pets =>
      {
        :name => "monty",
        :species => "snake"
      }
  }
}

# 1. Get Jonathan's Twitter handle (i.e. the string `"jonnyt"`)
users["Jonathan"][:twitter]
## OR
# p users.dig("Jonathan", :twitter)

# 2. Get Erik's hometown
users["Erik"][:home_town]

# 3. Get the array of Erik's lottery numbers
users["Erik"][:lottery_numbers]

# 4. Get the type of Avril's pet Monty
## **removed the [] surrounding the pets hash**
users["Avril"][:pets][:species]

# 5. Get the smallest of Erik's lottery numbers
users["Erik"][:lottery_numbers].min

# 6. Return an array of Avril's lottery numbers that are even
avril_lottery_numbers = users["Avril"][:lottery_numbers]
avril_lottery_numbers.select { |n| n.even?  }

# 7. Erik is one lottery number short! Add the number `7` to be included in his lottery numbers
users["Erik"][:lottery_numbers].push(7)

# 8. Change Erik's hometown to Edinburgh
users["Erik"][:home_town].replace("Edinburgh")

# 9. Add a pet dog to Erik called "Fluffy"
users["Erik"][:pets].push({ :name => "Fluffy", :species => "dog" })

# 10. Add another person to the users hash
users["Charles"] = {
  :twitter => "CDarwin",
  :lottery_numbers => [12, 2, 18, 9],
  :home_town => "Shrewsbury",
  :pets =>
    {
      :name => "harriet",
      :species => "tortoise"
    }
}
