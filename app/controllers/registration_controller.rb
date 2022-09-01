class RegistrationController < ApplicationController
    def new
        @user = User.new
    end

    def create
        #Not secure way:  @user = User.new(params[:user])
        @user = User.new(user_params)
        if @user.save
            #Not secure way: cookies[:user_id]
            session[:user_id] = @user.id
            redirect_to root_path, notice: flash.now[:success] = "Successfully created account"

        else
            render :new
        end
    end

    private

    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
