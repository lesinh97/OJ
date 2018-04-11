class MicropostsController < ApplicationController
    def index
        @micropost = Micropost.paginate(page: params[:page]) 
    end
end
