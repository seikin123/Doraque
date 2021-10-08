class SimpleClass

  def kasan(a)
    b = 0
    a.each do |a|
    if a >= 0
      b += a
    end
    end
    puts b
  end

  def display(b)
    puts "合計値は'#{b}'です。"
  end

end

# a = [1,2,-1,2,3]
a = [1,2,-1,2,3]

SimpleClass.kasan(a)