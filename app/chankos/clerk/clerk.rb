# -*- coding: utf-8 -*-
module Clerk
  include Chanko::Unit

  active_if do |context, options|
    context.session['type'] == 'clerk'
  end

  scope(:controller) do
    callback(:create) do
      osinagaki = Osinagaki.new(params[:osinagaki])

      respond_to do |format|
        if osinagaki.save
          format.html { redirect_to osinagaki, notice: 'Osinagaki was successfully created.' }
        else
          format.html { render action: "index" }
        end
      end
    end

    callback(:destroy) do
      if osinagaki = Osinagaki.find(params[:id])
        osinagaki.destroy
      end

      respond_to do |format|
        format.html { redirect_to osinagakis_url }
      end
    end
  end

  scope(:view) do
    callback(:switch) do
      content_tag :div, :class => "switch" do
        link_to('ゲストに切り替え', '/osinagakis/switch')
      end
    end

    callback(:create_form) do
      render :partial => '/form', :locals => {:osinagaki => Osinagaki.new}
    end

    callback(:delete_button) do
      link_to 'Destroy', osinagaki, confirm: 'Are you sure?', method: :delete, class: 'btn btn-danger'
    end
  end
end
