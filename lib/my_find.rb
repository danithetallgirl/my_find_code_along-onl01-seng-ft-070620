require 'pry'

def my_find(collection)
  i = 0
  block_returns = []
  while i < collection.length
    block_returns << yield(collection[i])
    i = i + 1
  end
  
  if block_returns
end

my_find(collection) {|i| }