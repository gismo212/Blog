require 'rails_helper'

describe Article do
  describe "validation" do
    it { should validate_length_of :text}
    it { should validate_length_of :title} 
  end

  describe "associations" do
    it { should have_many :comments }
  end

  describe "#subject" do
    it "returns the article title" do
      article = create(:article, title: 'Foo Bar')

      expect(article.subject).to  eq 'Foo Bar'
    end
  end

  describe "#last_comment" do
    it "returns the last comment" do
      # создаём статью с 3 комментариями
      article = create(:article_with_comments)

      # проверка
      expect(article.last_comment.body).to eq "Comment body 3"
    end
  end
end