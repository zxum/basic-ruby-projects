
def bubblesort (arr)
    for i in 0..(arr.length-1)
      for i in 0..(arr.length-2)
        temp = 0
        if arr[i]<arr[i+1]
          arr[i] = arr[i]
          arr[i+1]=arr[i+1]
        elsif arr[i]>arr[i+1]
          temp = arr[i]
          arr[i] = arr[i+1]
          arr[i+1] = temp
        end
      end
    end
    arr
  end
  
  p bubblesort([-3, 4, 7, 0, 200, 11, -52, 110, 5000])
  p bubblesort([4,3,78,2,0,2])
  p bubblesort([12, 10, 500, -500])