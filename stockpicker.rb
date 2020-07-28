#if stock from previous day is higher, then do not add to the array 
#then sort from lowest to highest
#find the index of the lowest and highest from original array

def stock_picker(stocks)
    #get all combinations of the profits
    doubles = stocks.repeated_combination(2).to_a
    #find the largest profit and return that pair of stock prices
    summed = doubles.max{|pair1,pair2| (pair1[1]-pair1[0])<=>(pair2[1]-pair2[0])}
    #create an array for the days to buy and sell
    arr=[]
    #find the index of the price to buy and add to the array
    arr[0] = stocks.index(summed[0]) 
    #find the index of the price to sell and add to the array
    arr[1] = stocks.index(summed[1]) 
    #return the array of day to buy and day to sell
    arr
  end
  
  stock_picker([17,3,6,9,15,8,6,1,10])