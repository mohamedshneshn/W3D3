def range(start, last)
    return [] if last <= start

    [start] + range(start+1, last)
end

p range(1,5)
p range(5,1)
p range(5,5)

def sum_array(arr)
end

