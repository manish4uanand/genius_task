class DashboardController < ApplicationController
	before_action :authenticate_user!#, except: [:index, :show]

	def give_time
		@time = Time.now.utc.to_s.split(" ").second
    render :partial => 'shared/time_portion'
	end

  def index
    if current_user.email == "admin@gmail.com"
      @login_details = LoginDetail.all
    else
    	user_id = current_user.id
    	@login_details = LoginDetail.joins(:user).where("user_id = ?", user_id).order("login_details.id desc")
    end
  end

  def punch_login_time
  	user_id = current_user.id
  	loggedin_time = params[:login_time]

    current_user_login_time = LoginDetail.where("user_id = ?", user_id)
    if current_user_login_time.present?
      flash[:notice] = "You have already loggedIn"
    else
    	LoginDetail.create_login_detail(user_id, loggedin_time)  	
    end
    @login_details = LoginDetail.joins(:user).where("user_id = ?", user_id).order("login_details.id desc")
  end

end
