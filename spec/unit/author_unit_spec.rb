# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: "Hello", author: "Test", price: 5, published_date: Time.now)
  end

  it 'is valid with valid inputs' do
    expect(subject).to be_valid
  end

  it 'is not valid without an published date' do
    subject.published_date = nil
    subject.title = nil
    subject.author = nil
    subject.price = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
    described_class.new(author: 'J. K. Rowling')
  end

  it 'is not valid without a author' do
    subject.price = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
    described_class.new(price: 5)
  end

  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end
end