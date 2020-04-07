#write your code here
def add(x,y)
    x+y
end

def subtract(x,y)
    x-y 
end

def sum(array)
    sum=0
    (array.length).times do |i|
        sum+=array[i]
    end
    sum
end

def multiply(array)
    product = 1
    (array.length).times do |i|
        product *= array[i]
    end
    product
end

def power(base,exp)
    base**exp
end

def factorial(num)
    if num==0
        1
    elsif num==1
        1
    else
        num * factorial(num-1)
    end
end
