# !/usr/bin/env ruby

# collection of Aritmethic dunctions
class MathWild
  # class aux functions
  def initialize
    self
  end

  class << self
    # covert string into a number
    def to_num(arg)
      return arg.to_f if arg.to_f.is_a?(Float)
    end

    # verify if an argument is a number
    # return true if is a number or false if not
    def number?(arg)
      arg.is_a?(Integer) || arg.is_a?(Float)
    end

    # verify if an array only has numbers
    def arr_number?(args)
      args.each do |arg|
        return false unless number?(arg)
      end
      true
    end

    # sum
    # simple sum function
    def sum(*args)
      result = 0
      args.each do |element|
        return 0 unless number?(element)

        result += element
      end
      result
    end

    # to sum a array of numbers
    def sum_arr(args)
      return 0 unless arr_number?(args)

      result = 0
      args.each do |element|
        return 0 unless number? element

        result += element
      end
      result
    end

    #to subtract
    def sub(*args)
      result = args.first
      args[1..].each do |element|
        return 0 unless number?(element)

        result -= element
      end
      result
    end

    def sub_arr(args)
      return 0 unless arr_number?(args)

      result = args.first
      args[1..].each do |element|
        return 0 unless number? element

        result -= element
      end
      result
    end
    
    #to multiply
    def mul(*args)
      result = args.first
      args[1..].each do |element|
        return 0 unless number?(element)

        result *= element
      end
      result
    end

    def mul_arr(args)
      return 0 unless arr_number?(args)

      result = args.first
      args[1..].each do |element|
        return 0 unless number? element

        result *= element
      end
      result
    end
    
    # to devide
    # todo: improve it
    def dev(*args)
      result = args.first
      args[1..].each do |element|
        return 0 unless number?(element) && element != 0
        result /= element
      end
      result
    end
    def dev_arr(args)
      return 0 unless arr_number?(args)

      result = args.first
      args[1..].each do |element|
        return 0 unless number?(element) && element != 0
        result /= element
      end
      result
    end




    # forced sum
    # try to sum even with an string or array and ignore if is not possible to convert
    def force_sum(*args)
      result = 0
      args.each do |element|
        if element.is_a?(Array)
          element = sum_arr(element)
        else
          element = to_num(element)
          return 0 unless number?(element)
        end
        result += element
      end
      result
    end
    
    def force_sub(*args)
      if args.first.is_a?(Array)
        result = sub_arr(args.first)
      else
        result = to_num(args.first)
      end
      args[1..].each do |element|
        if element.is_a?(Array)
          element = sum_arr(element)
        else
          element = to_num(element)
          return 0 unless number?(element)
        end
        result -= element
      end
      result
    end
  end
end
