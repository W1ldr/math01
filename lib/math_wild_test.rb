## !/usr/bin/env ruby

require_relative './math_wild.rb'
require 'bigdecimal'
require 'bigdecimal/util'


# scrip to test all the operations
# sum
if MathWild.sum(1,2) == 3
    puts 'sum passed'
else
    puts 'sum failed'
end

if MathWild.sum_arr([1,2]) == 3
    puts 'sum arr passed'
else
    puts 'sum_arr failed'
end
# sub
if MathWild.sub(1,2) == -1
    puts 'sub passed'
else
    puts 'sub failed'
end

if MathWild.sub_arr([1,2]) == -1
    puts 'sub arr passed'
else
    puts 'sub_arr failed'
end
# mul
if MathWild.mul(2,2) == 4
    puts 'mul passed'
else
    puts 'mul failed'
end

if MathWild.mul_arr([2,2]) == 4
    puts 'mul arr passed'
else
    puts 'mul_arr failed'
end
# devide
if MathWild.dev(10,2) == 5
    puts 'dev passed'
else
    puts 'dev failed'
end

if MathWild.dev_arr([10,2]) == 5
    puts 'dev arr passed'
else
    puts 'dev_arr failed'
end

if  MathWild.force_sum(1,2, [1,2,4]).to_d == 10.0.to_d
    puts 'force_sum  passed'
else
    puts 'force_sum failed'
end

if MathWild.force_sub(1,'2', 'o', [1,2,4]).to_d == -8.0.to_d
    puts 'force_sub arr passed'
else
    puts 'force_sub_arr failed'
end


