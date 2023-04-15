class AddPriceToKindergarten < ActiveRecord::Migration[7.0]
  def change
    add_column :kindergartens, :price, :integer
  end
end
