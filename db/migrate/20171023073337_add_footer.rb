class AddFooter < ActiveRecord::Migration[5.1]
  def change
    create_table :pages do |t|
      t.string "langue"
      t.string "titre"
      t.string "contenu"
    end
  end
end
