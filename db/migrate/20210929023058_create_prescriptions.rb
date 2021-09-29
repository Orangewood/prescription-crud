class CreatePrescriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :prescriptions do |t|
      t.string :name
      t.string :dosage

      t.timestamps
    end
  end
end
