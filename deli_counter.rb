# Write your code here.
#katz_deli = []
katz_deli = ["Ada", "Grace", "Kent"]

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
  puts "Welcome, #{newCustomer}. You are number #{lineLength}
  

puts line(katz_deli)
