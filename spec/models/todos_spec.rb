require 'rails_helper'

describe Todo do
  before do
    @todo = Todo.create(description: 'Test')
  end

  describe 'time_till_delete' do
    it 'should return days until item is deleted' do
      expect(@todo.time_till_delete).to eq(7)
    end
  end
end