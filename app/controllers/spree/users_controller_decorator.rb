Spree::UsersController.class_eval  do

  alias :old_show :show
  def show
    old_show
    load_recently_bought_products
  end

  private
    def load_recently_bought_products
      @recently_bought_products = @user.orders.collect{|order| order.line_items.collect{|item| item.variant.product } }.flatten
    end


end
