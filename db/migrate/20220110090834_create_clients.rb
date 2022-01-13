class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.has_many :reservation
      t.has_many :client_promotion

      t.string :email
      t.boolean :real_user
      t.string :first_name
      t.string :last_name
      t.integer :age

      t.timestamps
    end
  end
end
