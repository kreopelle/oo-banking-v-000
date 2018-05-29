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
    if valid? == false
      "Transaction rejected. Please check your account balance."
      @status == "rejected"
    elsif @status == "complete"
      return nil
    elsif valid? == true && @status == "pending"
      sender.balance = sender.balance - amount
      receiver.deposit(amount)
      @status = "complete"
    end
  end

  def reverse_transfer
    if @status == "complete"
      receiver.balance = receiver.balance - amount
      sender.deposit(amount)
      @status = "reversed"
    end
  end

end
