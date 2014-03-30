class PagesController < HighVoltage::PagesController
  layout 'landing'

  def show
    render template: current_page
  end
end
