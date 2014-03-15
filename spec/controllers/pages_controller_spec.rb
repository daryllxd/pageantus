require 'spec_helper'

LANDING_PAGES = %w(about faq)

describe HighVoltage::PagesController do
  LANDING_PAGES.each do |page|
    context 'GET /#{page}' do
      before { get :show, id: page }

      it "should be successful" do
        expect(response).to be_success  
      end

      it "should render the page" do
        expect(response).to render_template(page)
      end      
    end
  end
end
