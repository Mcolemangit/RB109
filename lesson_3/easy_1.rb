#3
advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub(/important/, "urgent")

#5
(10..100).cover?(42)

#6
famous_words = "seven years ago..."
 #a)
 famous_words2 = "Four score and" + famous_words
 #b)
 famous_words.prepend("Four score and ")

#7
flinstones = ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]

flinstones.flatten!

#8
flintstones2 = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

p flintstones2.assoc("Barney")
