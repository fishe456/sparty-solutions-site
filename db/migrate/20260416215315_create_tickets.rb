class CreateTickets < ActiveRecord::Migration[8.1]
  def change
    create_table :tickets do |t|
      t.string :title
      t.string :last_name
      t.string :first_name
      t.string :contact
      t.string :description

      t.timestamps
    end
  end
end
