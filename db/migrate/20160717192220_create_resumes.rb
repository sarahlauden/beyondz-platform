class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.text :tags, array: true, default: []
      t.attachment :resume
      t.integer :score
      t.text :title

      t.timestamps
    end
  end
end
