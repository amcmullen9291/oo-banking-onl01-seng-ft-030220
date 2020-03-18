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
    if @sender.balance > @amount && @status = "pending"
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    elsif 
      @sender.balance < @amount && @status = false
    end
  end 

end