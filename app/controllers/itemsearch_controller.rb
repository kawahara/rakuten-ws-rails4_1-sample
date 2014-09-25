class ItemsearchController < ApplicationController
  def index

  end

  def search
    keyword = params['keyword']

    @items = RakutenWebService::Ichiba::Item.search(
        :keyword => keyword,
        :hits => 30
    ).fetch_result

    render 'itemsearch/index'
  end
end
