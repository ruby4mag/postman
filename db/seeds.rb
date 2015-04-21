# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
   User.create(email: 'admin@masa.com' , first_name: 'Admin', encrypted_password: '$2a$10$3nqyhFleFn2rsN8Fpy/5i.O8kyRCWOR1IRMWN.JD1iszp0iR9JwLG',created_at: '2015-04-14 02:40:16', role_id: 1)
