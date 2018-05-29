class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount = 50)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    if sender.valid? && receiver.valid?
      true
    end
  end

  def execute_transaction
      if @status == "complete"
        
        valid? == true && @status == "pending"
        sender.balance = sender.balance - amount
        receiver.deposit(amount)
        @status = "complete"
      elsif valid? == false
        @status == "rejected"
        "Transaction rejected. Please check your account balance."
      elsif @status == "complete"
      end
  end

end
