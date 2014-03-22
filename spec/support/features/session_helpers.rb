module Features

  def sign_in_as_user
    @user = create(:user)
    sign_in_with(@user.email, @user.password)
  end

  def sign_in_as_user_with_pageants
    @user = create(:user, :with_pageants)
    sign_in_with(@user.email, @user.password)
  end

  def sign_in_as_user_without_pageants
    sign_in_as_user
  end


  def sign_in_as_user_with_active_pageant
    @user = create(:user, :with_active_pageant)
    sign_in_with(@user.email, @user.password)
  end

  def sign_in_with(email, password)
    visit root_path
    within(:css, '.header-sign-in-form') do
      fill_in 'Email Address', with: email
      fill_in 'Password', with: password
    end
    click_button 'Log In'
  end

end
