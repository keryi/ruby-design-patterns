require_relative 'employee'
require_relative 'payroll'
require_relative 'taxman'

e = Employee.new('John', 'Software Engineer', 100_000)
e.add_observer(Payroll.new)
e.add_observer(TaxMan.new)

puts 'Raise time...'

e.salary = 150_000

