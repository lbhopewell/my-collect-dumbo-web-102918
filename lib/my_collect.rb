require "pry"

def my_collect(array)
  new_array = []
  i = 0 
  while i < array.length
  yield (array[i])
  i = i + 1
end
new_array
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
new_array = []
my_collect(array) do |name|
  name.split(" ").first 

end

collection = ['ruby', 'javascript', 'python', 'objective-c']
my_collect(collection) do |lang|
  lang.upcase
end
