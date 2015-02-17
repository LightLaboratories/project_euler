# Non-bouncy numbers
# Problem 113

# Working from left-to-right if no digit is exceeded by the digit to its left it
# is called an increasing number; for example, 134468.

# Similarly if no digit is exceeded by the digit to its right it is called a
# decreasing number; for example, 66420.

# We shall call a positive integer that is neither increasing nor decreasing a
# "bouncy" number; for example, 155349.

# As n increases, the proportion of bouncy numbers below n increases such that
# there are only 12951 numbers below one-million that are not bouncy and only
# 277032 non-bouncy numbers below 10**10.

# How many numbers below a googol (10**100) are not bouncy?

def desc?(x)
  num_array = x.to_s.chars.map(&:to_i)
  num_array.reduce{ |e1,e2| e1 >= e2 ? e2 : (return false) }; true
end

def asc?(x)
  num_array = x.to_s.chars.map(&:to_i)
  num_array.reduce{ |e1,e2| e1 <= e2 ? e2 : (return false) }; true
end

def bouncy?(x)
 if asc?(x) || desc?(x)
   return false
 else
   return true
 end
end

total = 10**10
count = 0
numb = 0

while numb != total
  if bouncy?(numb)
   count +=1
  end
  numb += 1
end

p total - count
