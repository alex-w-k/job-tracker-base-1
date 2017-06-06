class CreateJobsTags < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs_tags do |t|
      t.integer :job_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
