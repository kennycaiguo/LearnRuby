arr1=[11,22,3,4,5]
arr2=[22,55,4,12]
arr3=arr1&arr2 #获取两个数组的交集
#puts(arr3)
arr4=arr1|arr2 #获取两个数组的并集,允许有重复元素
#puts(arr4)
arr5 =arr1 -arr3 #两个数组可以进行减法运算
puts(arr5)
puts("===================")
#arr6 = arr5 +arr3#两个数组可以进行加法运算
#puts(arr6) 
arr5<<8 #往数组里面追加元素
puts(arr5)
