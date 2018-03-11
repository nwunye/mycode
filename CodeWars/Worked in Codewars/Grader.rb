def grader(score)
  if score > 1 || score < 0.6
  "F"
  elsif score >= 0.9
  "A"
  elsif score >= 0.8
  "B"
  elsif score >= 0.7
  "C"
  elsif score >= 0.6
  "D"
  end
end