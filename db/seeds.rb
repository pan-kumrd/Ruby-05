
role = Role.find_or_create_by({ name: "admin" })

admin = User.new email: "admin@michaelruml.cz",
                 password: "12345678",
                 password_confirmation: "12345678",
                 admin: true
admin.skip_confirmation!
admin.roles << role
admin.save
