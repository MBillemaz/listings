class PageController < ApplicationController
    def show
        @pages = Page.where("id = :id", id: params[:id])
    end
end