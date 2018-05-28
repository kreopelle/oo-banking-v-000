class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount = 50)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?(sender, receiver)
    if sender.valid? && receiver.valid?
      true
    end
  end

end
