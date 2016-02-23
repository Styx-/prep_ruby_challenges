def is_prime?(number)
  return false if number == 0
  (1..number).each do |divisor|
    if (number % divisor == 0) && (divisor != 1) && (divisor != number)
      return false
    end
  end
  true
end