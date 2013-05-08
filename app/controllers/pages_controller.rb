class PagesController < ApplicationController
  #consider deleting this file if we choose to use links#index as homepage 5/8/13
  def index
    @links = Link.all
  end
end
