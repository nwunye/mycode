def solution(a, b)
  if b.length > a.length
  puts a + b + a
elsif a.length > b.length
  puts b + a + b
  end
end

solution("111", "22")