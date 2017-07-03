#1

def insertionSort(data_list1):
   for index in range(1,len(data_list1)):

     currentvalue = data_list1[index]
     position = index

     while position>0 and data_list1[position-1]>currentvalue:
         data_list1[position]=data_list1[position-1]
         position = position-1

     data_list1[position]=currentvalue

data_list1 = [67, 45, 2, 13, 1, 998]
insertionSort(data_list1)
print(data_list1)


#2

def insertionSort(data_list2):
   for index in range(1,len(data_list2)):

     currentvalue = data_list2[index]
     position = index

     while position>0 and data_list2[position-1]>currentvalue:
         data_list2[position]=data_list2[position-1]
         position = position-1

     data_list2[position]=currentvalue

data_list2 = [89, 23, 33, 45, 10, 12, 45, 45, 45]
insertionSort(data_list2)
print(data_list2)
