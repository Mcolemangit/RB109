vehicles = [
    'car', 'car', 'truck', 'car', 'SUV', 'truck',
    'motorcycle', 'motorcycle', 'car', 'truck'
  ]
  
def count_occurrences(array)
   occurrences ={}
   array.uniq.each do |x| 
    occurrences[x] = array.count(x)
   end
  occurrences.each do |x,y|
  puts "#{x} => #{y}"
  end
end    
        
count_occurrences(vehicles)  



