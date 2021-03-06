require_relative '../config'

class CreateStudents < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :students do |t|
      t.string  :first_name
      t.string  :last_name
      t.string  :gender
      t.date    :birthday
      t.string  :email
      t.string  :phone

      t.timestamps
    end
  end
end
