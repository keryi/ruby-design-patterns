require_relative 'employee'
require_relative 'payroll'
require_relative 'taxman'
require_relative 'promoter'

e = Employee.new('John', 'Software Engineer', 100_000)
e.add_observer(Payroll.new)
e.add_observer(TaxMan.new)
e.add_observer(Promoter.new)

puts 'Raise & Promote time...'

e.salary = 150_000
e.title = 'Chief Engineer'
e.changes_complete
