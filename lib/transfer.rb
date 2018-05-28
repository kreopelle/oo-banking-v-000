class Transfer
  attr_accessor :sender, :receiver, :status, :amount, :sender, :receiver

  def initialize(sender, receiver)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = 50
  end

  def valid?


end
