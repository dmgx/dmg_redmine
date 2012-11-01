class CreatePunches < ActiveRecord::Migration
  def change
    create_table :punches do |t|
      t.datetime :in
      t.datetime :out
      t.integer :user_id
      t.integer :project_id
      t.integer :issue_id
      t.text :note

      t.timestamps
    end
  end
end
