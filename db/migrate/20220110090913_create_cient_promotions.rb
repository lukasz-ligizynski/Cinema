# frozen_string_literal: true

class CreateCientPromotions < ActiveRecord::Migration[7.0]
  def change
    create_table :cient_promotions do |t|
      t.belongs_to :client
      t.belongs_to :promotion

      t.timestamps
    end
  end
end
