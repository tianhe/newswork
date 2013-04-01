# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(email: 'tianhe@gmail.com')
interest = user.interests.create(name: 'fracking')
interest = user.interests.create(name: 'inspirational quotes')
interest = user.interests.create(name: 'urban compass')
interest = user.interests.create(name: 'sheryl sandberg')

user = User.create(email: 'michelle.kelly.wu@gmail.com')
interest = user.interests.create(name: 'kung fu')
interest = user.interests.create(name: 'chinatown')
interest = user.interests.create(name: 'energy')
interest = user.interests.create(name: 'boxing')
interest = user.interests.create(name: 'oil')
interest = user.interests.create(name: 'french cooking')
interest = user.interests.create(name: 'spinning')
interest = user.interests.create(name: 'MIT sloan')
interest = user.interests.create(name: 'working out')
# 1. David Choi: kung fu, chinatown
# 2. Wanda Bell: energy, boxing
# 3. Christine Leach: french cooking, spinning class
