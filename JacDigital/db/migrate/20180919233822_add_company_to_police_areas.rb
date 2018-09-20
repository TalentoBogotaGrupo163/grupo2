class AddCompanyToPoliceAreas < ActiveRecord::Migration[5.2]
  def change
    add_reference :police_areas, :company, foreign_key: true
  end
end
