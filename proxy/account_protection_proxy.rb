require 'etc'

class AccountProtectionProxy
  def initialize(real_account, owner_name)
    @subject = real_account
    @owner_name = owner_name
  end

  def method_missing(name, *args)
    check_access
    @subject.send name, *args
  end

  private

  def check_access
    if Etc.getlogin != @owner_name
      raise "Illegal access: #{@owner_name} has no access right"
    end
  end
end
