class SessionForm
  include ActiveModel::Model

  attr_accessor(
    :login,
    :password
  )

  validates :password, presence: true
  validate :user_valid?

  def user
    User.find_by_login(login)
  end

  private

  def user_valid?
    return unless user.blank? || !user.authenticate(password)

    errors.add(:login, "login or password doesn't match")
  end
end
