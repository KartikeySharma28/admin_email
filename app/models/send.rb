class Send < ApplicationRecord

  def self.ransackable_attributes(auth_object = nil)
    ["body", "created_at", "id", "updated_at", "username"]
  end

end
