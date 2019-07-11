Permission.destroy_all
UserRole.destroy_all
Role.destroy_all
Organization.destroy_all
User.destroy_all


admin = Role.create(name: "admin")
reader = Role.create(name: "reader")
applicant = Role.create(name: "applicant")

admin.permissions << Permission.create(role: admin, name: "create_opportunity")
admin.permissions << Permission.create(role: admin, name: "assign_reader")
reader.permissions << Permission.create(role: reader, name: "review_application")
applicant.permissions << Permission.create(role: applicant, name: "view_application_status")



google = Organization.create(name: "Google")
flatiron = Organization.create(name: "Flatiron School")

matt = User.create(
  first_name: "Matt",
  last_name: "McAlister",
  email: "matt.mcalister93@gmail.com",
  password: "password"
)

UserRole.create(user: matt, organization: flatiron, role: admin)
UserRole.create(user: matt, organization: google, role: applicant)
