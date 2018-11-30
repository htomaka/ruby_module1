# each
# each applies the given block to each element of the array
def kennedy_brothers
    brothers = ["Robert", "Ted", "Joseph", "John"]
    result = []
    
    brothers.each do |brother|
        result << brother.upcase
    end
    
    result
end

p kennedy_brothers


# map alias collect
# map applies the given block (projection) to each element and returns a new arrray
def kennedy_brothers
    brothers = ["Robert", "Ted", "Joseph", "John"]

    brothers.map do |brother|
        brother.upcase
    end
end

p kennedy_brothers

# find alias detect
# find applies the given block (predicate) to each element of the collection and returns the first which evaluates to true

def find_sisters
    sisters = ["Rose", "Kathleen", "Eunice", "Patricia", "Jean"]
    sisters.find do |sister|
        sister.length > 4
    end
end

p find_sisters

# select alias find_all
# select applies the given block (predicate) to each element of the collection and returns all the elements which evaluates to true

def all_the_odds
  numbers = [1,2,3,4,5]

  numbers.select do |num|
    num.odd?
  end

end

# max
# max finds the maximum value of a collection

p [1,2,3,8,14,120].max

# min
# min finds the minimum value of a collection

p [1,2,3,8,14,120].min

# max_by
# max_by returns the maximum value from the given block

p ["aa", "aaaaaa", "aaa"].max_by {|val| val.length}

# min_by
# min_by returns the minimum value from the given block

p ["aa", "aaaaaa", "aaa"].min_by {|val| val.length}

# sort_by
# sort_by returns a new collection ordered by the given block (default ASC)

p ["aa", "aaaaaa", "aaa"].sort_by {|val| val.length}

# all?
# all return true if all elements in a collection evaluates to true from the given block

p ['aa', 'aa', 'aa'].all? {|val| val.length == 2}

# any?
# all return true if at least one element in a collection evaluates to true from the given block

p ['aa', 'aaaa', 'aa'].any? {|val| val.length == 4}

# one?
# all return true if exactly one element in a collection evaluates to true from the given block

p ['aa', 'aaaa', 'aa'].one? {|val| val.length == 4}

# none?
# all return true if all elements in a collection evaluates to false from the given block

p ['aa', 'aa', 'aa'].none? {|val| val.length == 4}