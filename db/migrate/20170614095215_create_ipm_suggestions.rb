class CreateIpmSuggestions < ActiveRecord::Migration[5.1]
  def change
    create_table :ipm_suggestions do |t|
      t.string :title
      t.text :description
      t.string :icon

      t.timestamps
    end
  end
end
