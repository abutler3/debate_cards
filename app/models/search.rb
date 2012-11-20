class Search < ActiveRecord::Base
  attr_accessible :author, :keywords, :tag, :year

  def cards
    @cards ||= find_cards
  end

private

  def find_cards
    cards = Card.order(:evidence)
    cards = cards.where("evidence like ?", "%#{keywords}%") if keywords.present?
    cards = cards.where("tag like ?", "%#{tag}%") if tag.present?
    cards = cards.where("author like ?", "%#{author}%") if author.present?
    cards = cards.where("date like ?", "%#{year}%") if year.present?
    cards
  end
end
