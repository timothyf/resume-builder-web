User.seed do |s|
  s.id    = 1
  s.email = "admin@example.com"
  s.password  = "password"
  s.password_confirmation = "password"
end

User.seed do |s|
  s.id    = 2
  s.email = "timothyf@gmail.com"
  s.first_name  = "Timothy"
  s.last_name = "Fisher"
  s.password = "3121018"
  s.password_confirmation = "3121018"
end
