package com.swd
import org.joda.time.LocalDate
fixture {
	role_admin(Role, authority: "ROLE_ADMIN")
	role_user(Role, authority: "ROLE_USER")

	user_admin(Account, username: "admin", name:"admin", barcode: "1234", password: "1234")
	user01(Account, username: "user01", name:"user01", barcode: "1234", password: "1234")
	user02(Account, username: "user02", name:"user02", barcode: "1234", password: "1234")
	user03(Account, username: "user03", name:"user03", barcode: "1234", password: "1234")
	user04(Account, username: "user04", name:"user04", barcode: "1234", password: "1234")
	user05(Account, username: "user05", name:"user05", barcode: "1234", password: "1234")

	user_role_admin(AccountRole, account: user_admin, role: role_admin)
	user_role_user01(AccountRole, account: user01, role: role_user)
	user_role_user02(AccountRole, account: user02, role: role_user)
	user_role_user03(AccountRole, account: user03, role: role_user)
	user_role_user04(AccountRole, account: user04, role: role_user)
	user_role_user05(AccountRole, account: user05, role: role_user)


	e01(Equipment, barcode:"0000",title:"pencil" ,amount:20	,price:10 ,description:"มันคือดินสอ")
	e02(Equipment, barcode:"0001",title:"pen" ,amount:20	,price:10 ,description:"")
	e03(Equipment, barcode:"0002",title:"key" ,amount:20	,price:10 ,description:"")

	r01(Requistion, requistionDate :new LocalDate(), returnDate :new LocalDate().plusDays(7),amount:2,equipments :[e01],borrower: user01, endorser: user_admin, approved : true)
	r02(Requistion, requistionDate :new LocalDate(), returnDate :new LocalDate().plusDays(7),amount:2,equipments :[e01, e02],borrower: user02, endorser: user_admin, approved : true)
	r03(Requistion, requistionDate :new LocalDate(), returnDate :new LocalDate().plusDays(7),amount:2,equipments :[e01, e02, e03],borrower: user03, endorser: user_admin, approved : true)

}