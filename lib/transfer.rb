class Transfer
  attr_accessor :transfer, :status

  def initialize(sender, reciever, amount)
    @status = "pending"
  end
end
