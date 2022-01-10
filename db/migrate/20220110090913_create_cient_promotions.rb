class CreateCientPromotions < ActiveRecord::Migration[7.0]
  def change
    create_table :cient_promotions do |t|

      t.timestamps
    end
  end
end
