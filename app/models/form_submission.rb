class FormSubmission < ApplicationRecord
  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "must be an actual email address" }
  validates :song_link, uniqueness: true, format: { with: /https:\/\/open\.spotify\.com\/track/, message: "must be a link from spotify" }
end
