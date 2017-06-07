class CreateTestimonials < ActiveRecord::Migration[5.1]
  def change
    create_table :testimonials do |t|
      t.string :first_name
      t.string :last_name
      t.string :company_name
      t.text :description

      t.timestamps
    end
  end
end
