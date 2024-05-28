class RenameColumnFormSubmission < ActiveRecord::Migration[7.1]
  def change
    rename_column :form_submissions, :song, :song_link
  end
end
