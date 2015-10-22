package com.swd

fixture {
	role_admin(Role, authority: "ROLE_ADMIN")
	role_user(Role, authority: "ROLE_USER")

	user_admin(Account, username: "admin", name:"admin", barcode: "1234", password: "1234")
	user_role_admin(AccountRole, account: user_admin, role: role_admin)
}