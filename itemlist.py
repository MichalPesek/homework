def sort(list):
    """
    print(list)
    needle = 37
    isIn = False
    left = 0
    right = list.length - 1
    while (left <= right) :
        let middle = Math.floor((left + right) / 2)
        console.log(left, right, middle)
        if (needle == list[middle]) :
            isIn = True
            break
        else if (needle > list[middle]) :
            left = middle + 1
        else :
            right = middle - 1
    
    print("Needle is " +  + "in list.")

    return list
    """

def insert(list, n):
    
    list = sorted(list)
    index = len(list)
    # Searching for the position
    for i in range(len(list)):
      if list[i] > n:
        index = i
        break
  
    # Inserting n in the list
    if index == len(list):
      list = list[:index] + [n]
    else:
      list = list[:index] + [n] + list[index:]
    return list
  
# Driver function
list = [1, 2, 4, 50, 189, 5, 15, 20, 80, 8, 9]
n = 33
  
print(insert(list, n))
