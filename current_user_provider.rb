class ExCurrentUserProvider < Auth::DefaultCurrentUserProvider
  TOKEN_COOKIX ||= "_X".freeze

  def log_on_user(user, session, cookies)
    super

    cookies.permanent[TOKEN_COOKIX] = { value: user.auth_token, httponly: true, domain: :all }
  end
end
