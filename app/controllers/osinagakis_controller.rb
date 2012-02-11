class OsinagakisController < ApplicationController
  ext_action(:clerk, :switch) do
    session['type'] = 'clerk'
    redirect_to root_path
  end

  ext_action(:clerk, :create)
  ext_action(:clerk, :destroy)

  def index
    @osinagakis = Osinagaki.all

    respond_to { |format| format.html }
  end
end
