class CashRegister
  
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    self.discount
    @last_transaction = nil
    @items = []
  end 
  
  def add_item(title, price, quantity=0)
    if quantity > 1
<<<<<<< HEAD
      @items.concat title.split*quantity
      @last_transaction = price*quantity 
      @total += price*quantity
    else 
      @items << title
      @last_transaction = price 
=======
      @items << title.split*quantity
      @last_transaction = @items[-1] 
      @total += price*quantity
    else 
      @items << title
      @last_transaction = @items[-1] 
>>>>>>> fb8051eb7f57f3f5267c5192192eeae39c3521e6
      @total += price
    end
  end 
  
  def apply_discount
    if @discount > 0   
      new_total = @total -= (@total * @discount*0.01)
      "After the discount, the total comes to $#{new_total.to_i}."
    else 
      "There is no discount to apply."
    end 
  end 
  
<<<<<<< HEAD
  def void_last_transaction
    @total -= @last_transaction
  end 
=======

  #   describe '#void_last_transaction' do
  #   it 'subtracts the last item from the total' do
  #     cash_register.add_item("apple", 0.99)
  #     cash_register.add_item("tomato", 1.76)
  #     cash_register.void_last_transaction
  #     expect(cash_register.total).to eq(0.99)
  #   end

  #   it 'returns the total to 0.0 if all items have been removed' do
  #     cash_register.add_item("tomato", 1.76, 2)
  #     expect{cash_register.void_last_transaction}.to change{cash_register.total}.from(3.52).to(0.0)
  #   end
  # end
  
>>>>>>> fb8051eb7f57f3f5267c5192192eeae39c3521e6
  
end 