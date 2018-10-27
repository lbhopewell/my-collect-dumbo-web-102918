require "pry"

def my_collect(array)
  
  i = 0 
  while i < array.length
  yield (array[i])
  #binding.pry
  i = i + 1
end
array
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
new_array = []
my_collect(array) do |name|
  name.split(" ").first 
#binding.pry
end

collection = ['ruby', 'javascript', 'python', 'objective-c']
my_collect(collection) do |lang|
  lang.upcase
end
