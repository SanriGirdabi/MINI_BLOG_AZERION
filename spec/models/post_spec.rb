require 'rails_helper'

RSpec.describe Post, type: :model do
  Rails.application.load_seed
  context 'validation' do
    subject do
      described_class.new(user_id: 1, header: 'Teknoloji', body: 'Günümüzde ilerleyen enerji sarfiyatı ile herşey', color: 'blue',
        title: 'Enerji İhtiyacı Öngörüleri 2', design: 'İki kolon', date: DateTime.new(2021, 1, 7, 11))
    end

    it 'Is valid with requirements' do
      expect(subject).to be_valid
    end

    it 'Is not valid without user_id' do
      subject.user_id = nil
      expect(subject).to_not be_valid
    end

    it 'Is not valid without date' do
      subject.date = nil
      expect(subject).to_not be_valid
    end
  end

  context 'Association' do
    it 'Has many comments' do
      u = Post.reflect_on_association(:comments)
      expect(u.macro).to eq(:has_many)
    end

    it 'Belongs to User' do
      u = Post.reflect_on_association(:user)
      expect(u.macro).to eq(:belongs_to)
    end
  end
end
