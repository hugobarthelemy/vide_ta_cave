class RemoveCategoryToProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :category
    add_reference :products, :category, foreign_key: true
  end
end
