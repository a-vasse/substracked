module ApplicationHelper
  def format_price(price)
    number_to_currency(price, { unit: "¥", precision: 0 })
  end
end
