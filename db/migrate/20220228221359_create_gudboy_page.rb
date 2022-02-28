class CreateGudboyPage < ActiveRecord::Migration[6.1]
  def change
    create_table :gudboy_pages do |t|
      t.string :user_id

      t.timestamps
    end
  end
end
