class Transfer
  # your code here
  attr_accessor :sender, :receiver , :amount, :status
  def initialize(sender,receiver,amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  def valid?
    if @sender.valid? == true && @receiver.valid? == true
      true
    else false
    end
  end
  def execute_transaction
    if valid? == true
      if @sender.balance < 1
        @status = "rejected"
        "Transaction rejected. Please check your account balance."
      else
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    end
    end
  end

end
