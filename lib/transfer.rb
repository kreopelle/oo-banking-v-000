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
    unless @status = "complete"
    if valid?
      sender.balance = sender.balance - amount
      receiver.deposit(amount)
      @status = "complete"
    elsif !valid?
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end

end
