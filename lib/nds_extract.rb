require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  count = 0

  while count < nds.length do
    result[nds[count][:name]] = gross_for_director(nds[count])
  end

  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  gross = 0
  count = 0

  while count < director_data[:movies].count do
    gross += director_data[:movies][count][:worldwide_gross]
    count += 1
  end

  gross
end
