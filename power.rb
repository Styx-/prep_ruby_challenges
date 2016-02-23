def power(base, exponent)
  products = []
  exponent.times {|number| products << base}
  products.reduce(:*)
end