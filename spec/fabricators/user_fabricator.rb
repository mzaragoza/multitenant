Fabricator(:user) do
  email { Faker::Internet.email }
  password 'password'
  after_build do |u|
    u.account ||= Account.last || Fabricate(:account)
  end
end

