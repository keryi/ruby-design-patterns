require_relative 'account_protection_proxy'
require_relative 'account'

account = AccountProtectionProxy.new(Account.new(100_000), 'vagrant')
account.withdraw 1000
account.deposit 100
puts account.balance
