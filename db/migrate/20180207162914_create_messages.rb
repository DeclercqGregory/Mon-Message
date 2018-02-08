class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.string :createur_name
      t.string :createur_prenom
      t.string :createur_date_naissance
      t.string :createur_ville_naissance
      t.string :createur_pays_naissance
      t.string :createur_rue
      t.string :createur_codepostal
      t.string :createur_ville
      t.string :createur_pays
      t.string :createur_mail
      t.string :createur_tel
      t.string :dest_nom
      t.string :dest_prenom
      t.string :dest_mail
      t.string :dest_tel
      t.string :dest_rue
      t.string :dest_codepostal
      t.string :dest_ville
      t.string :dest_pays
      t.string :dest_2_nom
      t.string :dest_2_prenom
      t.string :dest_2_mail
      t.string :dest_2_tel
      t.string :dest_2_rue
      t.string :dest_2_codepostal
      t.string :dest_2_ville
      t.string :dest_2_pays

      t.timestamps
    end
  end
end
