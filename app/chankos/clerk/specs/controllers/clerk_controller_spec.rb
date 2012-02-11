# -*- coding: utf-8 -*-
=begin
require 'spec_helper'

describe ClerkController, :type => :controller do
  before do
    enable_chanko(:clerk)
  end

  it "success" do
    get :index
    response.should be_success
  end
end
=end
