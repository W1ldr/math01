require "minitest/autorun"
require_relative "../lib/math_wild"

class MathWildTest < Minitest::Test
  # testes
  #sum
  def test_sum
    assert_equal 10,     MathWild.sum(5, 5)
    assert_equal 0,      MathWild.sum(10, -10)
    assert_equal -5,     MathWild.sum(5, -10)
  end

  def test_sum_arr
    assert_equal 100,    MathWild.sum_arr([1, 99])
    assert_equal 10,     MathWild.sum_arr([1, 2, 3, 4])
    assert_equal 1,      MathWild.sum_arr([0, 1])
  end

  # sub
  def test_sub
    assert_equal 0,      MathWild.sub(5, 5)
    assert_equal 55,     MathWild.sub(60, 5, 0)
    assert_equal -1,      MathWild.sub(0, 1)
  end

  def test_sub_arr
    assert_equal 0,      MathWild.sub_arr([99, 99])
    assert_equal -8,     MathWild.sub_arr([1, 2, 3, 4])
    assert_equal 1,      MathWild.sub_arr([2, 1])
  end

  # mul
  def test_mul
    assert_equal 99,     MathWild.mul(1, 99)
    assert_equal 24,     MathWild.mul(1, 2, 3, 4)
    assert_equal 0,      MathWild.mul(0, 1)
  end

  def test_mul_arr
    assert_equal 99,     MathWild.mul_arr([1, 99])
    assert_equal 24,     MathWild.mul_arr([1, 2, 3, 4])
    assert_equal 0,      MathWild.mul_arr([0, 1])
  end

  # div
  def test_dev
    assert_equal 100,    MathWild.dev(1000, 10)
    assert_equal 10,     MathWild.dev(20, 2)
    assert_equal 0,      MathWild.dev(1, 0)
  end

  def test_dev_arr
    assert_equal 100,    MathWild.dev_arr([1000, 10])
    assert_equal 10,     MathWild.dev_arr([20, 2])
    assert_equal 0,      MathWild.dev_arr([0, 1])
  end

  # force
  def test_force_sum
    assert_equal 101,    MathWild.force_sum([1,99], 'abab', 1)
    assert_equal 5,      MathWild.force_sum(2, '3', 0)
    assert_equal 0,      MathWild.force_sum([0, 1], '-1')
  end

  def test_force_sub
    assert_equal -98,    MathWild.force_sub([1,99])
    assert_equal 2,     MathWild.force_sub([1], '-1')
    assert_equal -1,      MathWild.force_sub([0,1])
  end


end
