module Features

  def sign_in_as_user
    @user = create(:user)
    sign_in_with(@user.email, @user.password)
  end

  def sign_in_with(email, password)
    visit root_path
    within(:css, '.sign-in-form') do
      fill_in 'Email Address', with: email
      fill_in 'Password', with: password
    end
    click_button 'Log In'
  end

end
