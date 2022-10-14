require 'rails_helper'

RSpec.describe Category, type: :model do
  before(:all) do
    @user = User.create(name: 'Amos', email: 'kinyeramo564@gmail.com', password: '125346')
    expect(@user).to be_valid
    @category = Category.new(name: 'Fast-food', icon: 'fast-food.png', user_id: @user.id)
  end

  describe 'Validations' do
    it 'should be valid' do
      expect(@category).to be_valid
      expect(@category.name).to eq('Fast-food')
      expect(@category.icon).to eq('fast-food.png')
    end
  end
end
