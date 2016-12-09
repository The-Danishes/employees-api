json.array! @employees.each do |employee|
  json.id employee.id
  json.email employee.email
  json.first_name employee.first_name
  json.last_name employee.last_name
  json.ssn employee.ssn
  json.birthday employee.birthday
end


# json.array! (0..5).each do |number|
#   json.number number
# end