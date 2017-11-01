class Transfer
  attr_accessor :status, :sender, :receiver, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    if valid? && @sender.balance >= @amount && @status != "complete"
      @sender.deposit -= @amount
      @receiver.deposit += @amount
      @status = complete

    else
      "Transaction rejected. Please check your account balance."
    end
  end
end
