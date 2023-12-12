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

    it 'excludes soft deleted items from queries' do
      soft_deleted_item_1 = create(:item)
      soft_deleted_item_2 = create(:item)
      soft_deleted_item_1.soft_delete

      expect(Item.count).to eq(1)
      expect(Item.all).not_to include(soft_deleted_item_1)
    end
  end
end
