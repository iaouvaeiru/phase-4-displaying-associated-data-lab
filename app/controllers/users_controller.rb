class UsersController < ApplicationController
    def show
        user = User.find_by(id: params[:id])
        if user
            render json: user, include: :items
        else
            render json: {error: '404 user not found'}
        end
    end
end
