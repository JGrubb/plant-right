class DroppingQuizStuff < ActiveRecord::Migration
  def self.up
    drop_table :answers
    drop_table :questions
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
      
  end
end
