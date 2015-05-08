class PagesController < ApplicationController
  def home
    @comments = Comment.all
    @comment = Comment.new
  end
end
