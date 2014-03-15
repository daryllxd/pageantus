class PagesController < HighVoltage::PagesController
  def show
    render template: current_page
  end
end
