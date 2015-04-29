class CreateRefrigerators < ActiveRecord::Migration
  def change
    create_table :refrigerators do |t|
    
      t.string :brand
      t.string :model
      t.string :model_variations
      t.string :configuration
      t.string :defrost_type
      t.string :compact?
      t.string :through_door_dispenser?
      t.string :automatic_icemaker?
      t.string :volume_cu_ft
      t.string :adjusted_volume_cu_ft
      t.string :kwh_per_year
      t.string :federal_standard_kwh_per_year
      t.string :measured_federal_standard_kwh_per_year
      t.string :percent_better_than_measured_federal_standard
      t.string :cee_tier
      t.decimal :rating, precision: 1, scale: 1
      t.decimal :popularity, precision: 1, scale: 2

      t.timestamps null: false
    end
  end
end
