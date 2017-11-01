class Transfer
  attr_accessor :transfer, :status, :sender, :reciever, :amount

  def initialize(sender, reciever, amount)
    @sender = sender
    @reciever = reciever
    @amount = amount
    @status = "pending"
  end
end
