require 'rational'

def simplify(numerator, denominator)
	simplify = numerator.gcd(denominator)
	new_numerator = numerator/simplify
	new_denominator = denominator/simplify
	[new_numerator, new_denominator]
end

def add(n1, d1, n2, d2)
	new_denominator = d1*d2
	numerator1 = n1*d2
	numerator2 = n2*d1
	new_numerator = numerator1 + numerator2
	simplify(new_numerator, new_denominator)
end

def subtract(n1, d1, n2, d2)
	new_denominator = d1*d2
	numerator1 = n1*d2
	numerator2 = n2*d1
	new_numerator = numerator1 - numerator2
	simplify(new_numerator, new_denominator)
end

def multiply(n1, d1, n2, d2)
	new_numerator = n1*n2
	new_denominator = d1*d2
	simplify(new_numerator, new_denominator)
end

def divide(n1, d1, n2, d2)
	new_numerator = n1*d2
	new_denominator = n2*d1
	simplify(new_numerator, new_denominator)	
end

