class CreateChangesProposals < ActiveRecord::Migration[5.2]
  def change
    create_table :changes_proposals do |t|
      t.string :message
      t.string :status
      t.references :recipe, foreign_key: true

      t.timestamps
    end
  end
end
