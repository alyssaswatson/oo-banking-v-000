class Transfer
  attr_accessor :transfer, :status

  def initialize(sender, reciever, amount)
    @sender = sender
    @reciever = reciever
    @amount = amount
    @status = "pending"
  end
end
