class Vector
  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
  end

  def to_s
    puts "\n(x, y) = (#{@num1} ,#{@num2})\n"
  end

  def length
    a = @num1 ** 2
    b = @num2 ** 2
    ans = Math::sqrt(a+b)
    puts "長さは　#{ans} です"
  end
end

puts "\nx座標を入力してください"
x = gets.to_i
puts "y座標を入力してください"
y = gets.to_i

vec = Vector.new(x,y)
vec.to_s
vec.length
