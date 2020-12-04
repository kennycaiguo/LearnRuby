arr=[0,1,2,3,5,6,8,12,14]
arr.each do |x| #ruby中，数组是可以迭代的
    if x%2==0 #输出该数组中的所以偶数
        puts(x)
    end
end