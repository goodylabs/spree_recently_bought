Deface::Override.new(
  :virtual_path => "spree/users/show",
  :name => "recently_bought_items_account_my_orders",
  :insert_after => "[data-hook='account_my_orders']",
  :partial => "spree/users/recently_bought_items",
  :disabled => false
)
