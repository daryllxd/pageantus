require 'spec_helper'

describe PagesController do
  describe 'GET #faq' do
    before do
      visit faq_path
    end

    it "should render the faq page" do
      expect(response).to render_template :faq
    end

  end

  describe 'GET #about' do
    before do
      visit about_path
    end

    it "should render the faq page" do
      expect(response).to render_template :about
    end

  end


end
