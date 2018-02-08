class CreateTasks < ActiveRecord::Migration[5.1]

  def change
    create_table :projects do |p|
      p.string :name,               null: false
    end

    create_table :tasks do |t|
      t.references :project,        null: false
      t.references :user,           null: false
      t.string :title,              null: false, limit: 240
      t.string :description,        limit: 500
      t.datetime :start_at,         null: false
      t.datetime :end_at,           null: false
      t.integer :state,             null: false, limit: 1
    end

    create_table :project_members do |pm|
      pm.references :project,        null: false
      pm.references :user,        null: false
      pm.integer :role,               null: false, limit: 1
    end

  end
end