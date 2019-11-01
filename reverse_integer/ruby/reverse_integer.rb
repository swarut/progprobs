class ReverseInteger
  def self.reverse_integer(n)
    stack = []
    factor = 1
    factor = -1 if n < 0
    n = n.abs
    while n != 0 do
      rem = n % 10
      stack.push(rem)
      n = n / 10
    end
    stack.inject('') { |acc, i| acc << i.to_s }.to_i * factor
  end
end
