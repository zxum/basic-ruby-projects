
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring(str,dictionary)
    #split the string argument into words
    split_str = str.split(" ")
    #create an array that will hold all the substrings 
    arr = []
    #for each word that was split, return an array of matching substrings from dictionary
    inc_str = split_str.each do |substr| 
      thing = dictionary.select{ |word| substr.downcase.include?(word)}
      arr += thing
    end
    return arr.tally
  end
  
  substring("Howdy partner, sit down! How's it going?", dictionary)