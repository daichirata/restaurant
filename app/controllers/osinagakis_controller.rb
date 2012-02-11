class OsinagakisController < ApplicationController
  ext_action(:clerk, :switch)
  ext_action(:clerk, :create)
  ext_action(:clerk, :destroy)

  def index
    @osinagakis = Osinagaki.all

    respond_to { |format| format.html }
  end

  def switch
     if session['type'] == 'guest'
       user_type = 'clerk'
     else
       user_type = 'guest'
     end
    session['type'] = user_type

    redirect_to root_path
  end
end
