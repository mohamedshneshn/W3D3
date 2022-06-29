def range(start, last)
    return [] if last <= start

    [start] + range(start+1, last)
end

# p range(1,5)
# p range(5,1)
# p range(5,5)
# ----------------------------------------------------------------

def sum_array_iterative(arr)
    sum=0
    arr.each do |ele|
        sum+=ele
    end
    sum
end

# p sum_array_iterative([1,2,3,4,5]) #15

def sum_array_rec(arr)
   return 0 if arr.empty?

#    arr.shift + sum_array_rec(arr)
   arr[0] + sum_array_rec(arr[1..-1])
end
# p sum_array_iterative([1,2,3,4,5]) #15
# -----------------------------------------------------------------------

def exp_1(base,pow)
    return 1 if pow == 0
    base * exp_1(base,pow-1)
end

# p exp_1(3,0)  #1
# p exp_1(3,1)  #3
# p exp_1(3,2)  #9
# p exp_1(3,3)  #27

def exp_2(base,pow)
    return 1 if pow == 0
    return base if pow == 1
    value = exp_2(base,pow/2)**2  # we use value to make our code faster                           
    if pow.even?
        value
    else
        base*value
    end

end

# p exp_1(2,0)  #1
# p exp_1(3,1)  #3
# p exp_1(4,2)  #16
# p exp_1(3,3)  #27

def deep_dup(arr)
    arr.map do |ele|
        if ele.kind_of?(Array)
            deep_dup(ele)
        else
            ele
        end
    end
end
a = [1, [2], [3, [4]]]
p deep_dup(a)

