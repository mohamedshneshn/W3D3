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
# ---------------------------------------------------------------------------------

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
# -------------------------------------------------------------------------------

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
# p deep_dup(a)

# -----------------------------------------------------------------------------------

def fibonacci_it(n)      #Array of fib = [0,1,1,2,3,5,8,13] 
    return [0] if n == 1
    return [0,1] if n==2
    arr=[0,1]
    (1..n-2).each do |i|
        arr << arr[-1]+arr[-2]
    end
    arr
end

# p fibonacci_it(3)
# p fibonacci_it(4)
# p fibonacci_it(5)

def fibonacci_rec(n)
    return [0] if n == 1
    return [0,1] if n==2
    prev = fibonacci_rec(n-1)
    prev << prev[-1] + prev[-2]
end

# p fibonacci_it(3)
# p fibonacci_it(4)
# p fibonacci_it(5)
# --------------------------------------------------------

def bsearch(arr,target)
   return nil if arr.empty?

    mid_index = arr.length / 2
   
   return mid_index if target == arr[mid_index]

   if target < arr[mid_index]
    bsearch(arr[0...mid_index],target) 
   else
    if bsearch(arr[mid_index+1..-1],target) != nil
        bsearch(arr[mid_index+1..-1],target) + mid_index+1
    end
   end
   
end

# p bsearch([1, 2, 3], 1) # => 0
# p bsearch([2, 3, 4, 5], 3) # => 1
# p bsearch([2, 4, 6, 8, 10], 6) # => 2
# p  bsearch([1, 3, 4, 5, 9], 5) # => 3
# p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
# p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
# p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil
# --------------------------------------------------------------------------