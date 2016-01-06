defmodule Accounting do

  # 增值税
  def value_added_tax(amount) do
    amount/1.03*0.03
  end

  # 附加税
  def additional_tax(amount) do
    value_added_tax(amount)*0.12
  end

  # 印花税
  def stamp_tax(amount) do
    amount*0.0003
  end

  @max 90000

  def bonus(more) do
    amount = @max + more
    value_added_tax(amount) + additional_tax(amount) + stamp_tax(amount)
  end

  def bonus_percentage(more) do
    bonus(more)/(more)
  end

end
