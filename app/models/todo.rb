class Todo < ActiveRecord::Base
  belongs_to :user

  def time_till_delete
    ((created_at + 8.days) - Time.now).to_i / (24 * 60 * 60)
  end
end
