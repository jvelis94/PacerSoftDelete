class Item < ApplicationRecord
  validates :name, presence: true

  def soft_delete
    update(deleted_at: Time.current)
  end

  def restore
    update(deleted_at: nil)
  end

	default_scope { where(deleted_at: nil) }
end
