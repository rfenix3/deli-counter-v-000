# Write your code here.
katz_deli = []
#katz_deli = ["Ada", "Grace", "Kent"]

def line(customers)
  if customers.length == 0 
    puts "The line is currently empty."
  else
    lineStatus = customers.each_with_index.map{|customer, index| "#{index+1}. #{customer}"}
    puts "The line is currently: #{lineStatus.join(" ")}"
  end
end

def take_a_number(katz_deli, newCustomer)
  katz_deli.push(newCustomer)
  lineLength = katz_deli.length
  puts "Welcome, #{newCustomer}. You are number #{lineLength} in line."
end

def now_serving(katz_deli)
  if katz_deli.length >=1
    servingCustomer = katz_deli.shift
    puts "Currently serving #{servingCustomer}."
  else
    puts "There is nobody waiting to be served!"
  end
end

take_a_number(katz_deli, "Ada")
take_a_number(katz_deli, "Grace")
take_a_number(katz_deli, "Kent")

puts line(katz_deli)

now_serving(katz_deli)

puts line(katz_deli)

