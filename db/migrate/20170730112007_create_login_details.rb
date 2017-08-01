class CreateLoginDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :login_details do |t|
      t.datetime :login_time
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
