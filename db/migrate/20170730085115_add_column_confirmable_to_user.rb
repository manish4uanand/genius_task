class AddColumnConfirmableToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :confirmable, :string    
  end
end
