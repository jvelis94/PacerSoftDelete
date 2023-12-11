require 'rails_helper'

RSpec.describe Item, type: :model do
  describe 'soft delete feature' do
    let(:item) { create(:item) }

    it 'soft deletes an item by setting deleted_at to current timestamp' do
      item.soft_delete
      expect(item.deleted_at).not_to be_nil
    end

    it 'restores a soft deleted item by setting deleted_at to nil' do
      item.soft_delete
      item.restore
      expect(item.deleted_at).to be_nil
    end
  end
end
