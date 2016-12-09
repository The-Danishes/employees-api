json.id employee.id
json.email employee.email
json.full_name employee.full_name
json.ssn employee.ssn
json.birthday employee.birthday

json.locations employee.addresses do |address|
  json.address1 address.address1
  json.address2 address.address2
  json.city address.city
  json.state address.state
  json.zip address.zip
end