class AddPriceToAnnouncements < ActiveRecord::Migration[6.0]
  def up
    add_column :announces, :price, :decimal, precision: 15, scale: 10
    add_column :announces, :title, :text
  end

  def down
    remove_column :announces, :price
    remove_column :announces, :title
  end
end
