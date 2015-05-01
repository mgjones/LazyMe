class ChangeTypeOfNumericColumns < ActiveRecord::Migration
  def change
    change_column :refrigerators, :volume_cu_ft, :float
    change_column :refrigerators, :kwh_per_year, :float
  end
end
