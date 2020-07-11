require 'pry'

def my_find(collection)
  i = 0
  block_returns = []
  while i < collection.length
    block_returns << yield(collection[i])
    i = i + 1
  end
  
  if block_returns.include?(false)
    false
  else
    true
  end
end

def my_find(collection)
  i = 0
  while i < collection.length
    if yield(collection[i])
      return collection[i]
    end
    i = i + 1
  end
end

collection = (1..100).to_a
my_find(collection) {|i| i % 3 == 0 and i % 5 == 0 }