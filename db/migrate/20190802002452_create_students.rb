class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :phone

      t.timestamps
    end
  end
end
