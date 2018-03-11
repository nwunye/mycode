def calc_mean(ary)
  if !ary.is_a?(Array)
    0
  elsif ary.empty?
    0
  else
    sum = 0
    ary.each do |x|
      sum += x
    end
  end
    puts (sum.to_f/ary.count)
end

calc_mean([91,162,71,200,2])