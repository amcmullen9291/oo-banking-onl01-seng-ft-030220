require 'pry'
class Transfer
  attr_accessor :status
  attr_reader :sender, :receiver, :amount, :name
 
# binding.pry   
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver 
    @amount = amount
    @status = "pending" 
  end 
  
  def valid?
    @sender.valid? && @receiver.valid? ? true : false
  end

  def execute_transaction
    if @sender.balance< @amount || !valid? 
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    elsif status != "complete"
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    end 
    
  end

end