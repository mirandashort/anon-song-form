class CreateFormSubmissions < ActiveRecord::Migration[7.1]
  def change
    create_table :form_submissions do |t|
      t.string :email
      t.string :song

      t.timestamps
    end
  end
end
