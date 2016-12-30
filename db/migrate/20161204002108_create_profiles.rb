class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :location
      t.boolean :receive_emails, default: false
      t.boolean :receive_job_alerts, default: false
      t.text :biography
      t.string :avatar_from_slack

      t.timestamps
    end
  end
end
