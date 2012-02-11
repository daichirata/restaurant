# -*- coding: utf-8 -*-
=begin
require 'spec_helper'

describe OzouniController, :type => :controller do
  before do
    enable_chanko(:ozouni)
  end

  it "success" do
    get :index
    response.should be_success
  end
end
=end
