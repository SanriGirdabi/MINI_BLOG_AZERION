require 'rails_helper'

RSpec.describe Comment, type: :model do
  Rails.application.load_seed
  context 'validation' do
    subject do
      described_class.new(user_id: 2, post_id: 1, date: DateTime.new(2021, 2, 2, 17),
      body: 'Şahane bir makale devamını bekliyoruz')
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
    it 'Belongs to user' do
      u = Comment.reflect_on_association(:user)
      expect(u.macro).to eq(:belongs_to)
    end

    it 'Belongs to Post' do
      u = Comment.reflect_on_association(:post)
      expect(u.macro).to eq(:belongs_to)
    end
  end
end
