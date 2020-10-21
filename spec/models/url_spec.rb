require 'rails_helper'

RSpec.describe Url, type: :model do
  let(:invalid_urls) { ['bla.com', 'https://bla', 'bla'] }
  let!(:testing_url) { build(:url, original: '') }


  describe '.valid_url?' do
    it 'should not allow invalid URLs to be saved' do
      invalid_urls.each do |url|
        testing_url.original = url

        expect(testing_url.valid_url?).to be_falsey
      end

      testing_url.original = 'http://blablabla.com'

      expect(testing_url.valid_url?).to be_truthy
    end
  end
end
