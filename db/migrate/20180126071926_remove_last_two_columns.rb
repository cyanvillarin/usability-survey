class RemoveLastTwoColumns < ActiveRecord::Migration[5.1]
  def change
  	remove_column :surveys, :t_weight
  	remove_column :surveys, :m_weight
  end
end
