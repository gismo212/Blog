class ArticlesController < ApplicationController

  def new
  end

  def create
    render plain: :article
  end

end
