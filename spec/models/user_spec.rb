RSpec.describe User, type: :model do
  subject do
    described_class.new(
      login: 'login',
      password_digest: 'pass'
    )
  end

  it 'valid with valid attrs' do
    expect(subject).to be_valid
  end

  it 'is not valid without login' do
    subject.login = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without password' do
    subject.password_digest = nil
    expect(subject).to_not be_valid
  end
end
