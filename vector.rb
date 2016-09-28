class Vector
  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
  end

  def getX
    return @num1
  end

  def getY
    return @num2
  end

  def to_s
    # puts "\n(x, y) = (#{@num1} ,#{@num2})\n"
    return "(#{@num1}, #{@num2})"
  end

  def length
    a = @num1 ** 2
    b = @num2 ** 2
    ans = Math::sqrt(a+b)
    # puts "長さは　#{ans} です"
    return ans
  end

  def add(vec)
    x = @num1 + vec.getX
    y = @num2 + vec.getY
    newVec = Vector.new(x,y)
    return newVec
  end
end

puts "\nX座標を入力してください"
x1 = gets.to_i
puts "Y座標を入力してください"
y1 = gets.to_i

puts "\n2つ目のX座標を入力してください"
x2 = gets.to_i
puts "2つめのY座標を入力してください"
y2 = gets.to_i

vec1 = Vector.new(x1,y1)
vec2 = Vector.new(x2,y2)
vec3 = vec1.add(vec2)

puts "\n1つ目のベクトルv1は\n(x,y) = #{vec1.to_s}\n"
puts "1つ目のベクトルの長さは #{vec1.length} です。\n\n"
puts "2つ目のベクトルv2は\n(x,y) = #{vec2.to_s}\n"
puts "v1 + v2 = #{vec3.to_s}"
