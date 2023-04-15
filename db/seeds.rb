User.all.destroy_all

users = User.create([
    { email: 'admin@petstohome.cl', password: 'admin1234', password_confirmation: 'admin1234' }
])