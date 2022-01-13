class CreatePromotions < ActiveRecord::Migration[7.0]
  def change
    create_table :promotions do |t|
      t.has_many :client_promotion
      t.string :description

      t.timestamps
    end
  end
end
