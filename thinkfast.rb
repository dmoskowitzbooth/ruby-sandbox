unpredictable_inputs = [
  "Hello!",
  Time.now,
  rand(100),
  :GOODBYE,
  nil,
  true,
  false,
  { :city => "Chicago", :state => "IL", :zip => 60654 }
]

some_random_input = unpredictable_inputs.sample
think=some_random_input.class
pp some_random_input
pp some_random_input.class
if
  think==String
  pp some_random_input.downcase
elsif think=="Time"
  pp "Time"
elsif think=="Integer"
  if
    some_random_input.even?
    pp some_random_input + "is even"
  elsif
    some_random_input.odd?
    pp some_random_input + "is odd"
  end
elsif think=="Symbol"
  pp some_random_input.downcase
elsif think=="nil"
  pp "no object provided"
elsif think==true
  pp "you may pass"
elsif think==false
  pp "you may not pass"
elsif think==Hash
  pp some_random_input.keys
else
  pp "none"
end
