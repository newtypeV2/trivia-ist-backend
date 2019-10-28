class CreatePlayersQuizzes < ActiveRecord::Migration[6.0]
  def change
    create_table :players_quizzes do |t|
      t.integer :quiz_id
      t.integer :player_id
      t.boolean :started, default: false
      t.boolean :completed, default: false
      t.integer :score, default: 0

      t.timestamps
    end
  end
end
