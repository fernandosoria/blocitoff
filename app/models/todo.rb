class Todo < ActiveRecord::Base
  belongs_to :user

  default_scope {order('created_at')}

  def time_till_delete
    ((created_at + 8.days) - Time.now).to_i / (24 * 60 * 60)
  end
end
