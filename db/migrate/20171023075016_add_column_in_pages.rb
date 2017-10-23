class AddColumnInPages < ActiveRecord::Migration[5.1]
  def change
    add_column :pages, :title, :string
    add_column :pages, :content, :string
    add_column :pages, :locale, :string
  end
end
