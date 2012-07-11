class InitialDatabase < ActiveRecord::Migration
  def up
    create_table :boards do |t|
      t.string :name
    end

    create_table :board_threads do |t|
      t.integer :board_id
    end

    create_table :posts do |t|
      t.integer :board_thread_id
      t.string :name
      t.string :email
      t.string :topic
      t.text :text
    end
  end

  def down
    drop_table :boards
    drop_table :board_threads
    drop_table :posts
  end
end
