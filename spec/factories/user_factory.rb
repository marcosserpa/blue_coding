FactoryBot.define do

  factory :url do
    original { 'http://blablabla.com' }
    short { 'http://bla.com' }
    title { 'Title' }
  end
end