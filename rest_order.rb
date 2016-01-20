
class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    orders.inject(0) do |total_cost, order|
      total_cost + order.keys.inject(0) {|cost, key| cost + @menu[key]*order[key] }
    end
  end
end


ChinesePalace = Restaurant.new({:rice => 3, :noodles => 2})
p ChinesePalace.cost({:rice => 1, :noodles => 1})




    
    



