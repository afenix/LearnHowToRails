class AddNumberColumn < ActiveRecord::Migration
  def change
    add_column :lessons, :number, :integer
  end
end