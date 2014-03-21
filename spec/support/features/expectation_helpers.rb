module Features
  def expect_to_see_image(src)
    expect(page).to have_xpath("//img[contains(@src,\"/assets/#{src}\")]")
  end

  def expect_routing_error_from
    expect{yield}.to raise_error( ActionController::RoutingError)
  end
end
