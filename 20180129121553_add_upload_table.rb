class AddUploadTable < ActiveRecord::Migration
  def change
  create_table :uploads do |t|
      t.attachment :image     
      t.timestamp :created_at
      t.timestamp :updated_at
    end
  end
end
