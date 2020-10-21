class Url < ApplicationRecord
  validates :original, presence: true
  validates :short, presence: true

  before_commit :valid_url?

  # def valid_url?
  #   binding.pry
  #   # uri = URI.parse(self.original).host

  #   # return false if uri.nil?

  #   # uri.include?('.')
  #   false
  # end

  def valid_url?
    uri = URI.parse(self.original).host

    return false if uri.nil?

    uri.include?('.')
  end
end
