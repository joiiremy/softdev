package com.swd
import org.joda.time.LocalDate
fixture {
	role_admin(Role, authority: "ROLE_ADMIN")
	role_user(Role, authority: "ROLE_USER")

	user_admin(Account, username: "admin", name:"admin", barcode: "1234", password: "1234")
	user01(Account, username: "user01", name:"เทพนิว", barcode: "1234", password: "1234")
	user02(Account, username: "user02", name:"นิว", barcode: "1234", password: "1234")
	user03(Account, username: "user03", name:"โจ้", barcode: "1234", password: "1234")
	user04(Account, username: "user04", name:"ซิก", barcode: "1234", password: "1234")
	user05(Account, username: "user05", name:"จ๊อย", barcode: "1234", password: "1234")

	user_role_admin(AccountRole, account: user_admin, role: role_admin)
	user_role_user01(AccountRole, account: user01, role: role_user)
	user_role_user02(AccountRole, account: user02, role: role_user)
	user_role_user03(AccountRole, account: user03, role: role_user)
	user_role_user04(AccountRole, account: user04, role: role_user)
	user_role_user05(AccountRole, account: user05, role: role_user)


	e01(Equipment, barcode:"0000",title:"ดินสอ" ,amount:20	,price:10 ,description:"ดินสอกดเปลี่ยนไส้ได้")
	e02(Equipment, barcode:"0001",title:"ปากกาน้ำเงิน" ,amount:30	,price:10 ,description:"ปากกาเขียนสมุดน้ำหมึกน้ำเงิน")
	e03(Equipment, barcode:"0002",title:"ปากกาแดง" ,amount:30	,price:10 ,description:"ปากกาเขียนสมุดน้ำหมึกสีแดง")
	e04(Equipment, barcode:"0003",title:"ชอล์ก" ,amount:25	,price:5 ,description:"ชอล์กไร้ฝุ่น")
	e05(Equipment, barcode:"0004",title:"แม็ก" ,amount:8	,price:20 ,description:"สำหรับเย็บกระดาษ")
	e06(Equipment, barcode:"0005",title:"ลูกแม็ก" ,amount:15	,price:15 ,description:"สำหรับใส่แม็ก")
	e07(Equipment, barcode:"0006",title:"กาว" ,amount:10	,price:25 ,description:"สำหรับติดกระดาษ")
	e08(Equipment, barcode:"0007",title:"กรรไกร" ,amount:8	,price:20 ,description:"สำหรับตัดกระดาษ")
	e09(Equipment, barcode:"0008",title:"กระดาษA4" ,amount:10	,price:100 ,description:"กระดาษ A4 1รีม")
	e10(Equipment, barcode:"0009",title:"ถุงดำ" ,amount:25	,price:49 ,description:"สำหรับใส่ขยะ")
	e11(Equipment, barcode:"0010",title:"น้ำยาถูพื้น" ,amount:10	,price:75 ,description:"สำหรับขัดห้องน้ำ")
	

	r01(Requistion, requistionDate :new LocalDate(), returnDate :new LocalDate().plusDays(7),amount:2,equipments :[e01, e02, e03, e04, e05, e06, e07, e08, e09, e10, e11],borrower: user01, endorser: user_admin, approved : true)
	r02(Requistion, requistionDate :new LocalDate(), returnDate :new LocalDate().plusDays(7),amount:2,equipments :[e01, e02, e03, e04, e05, e06, e07, e08, e09, e10, e11],borrower: user02, endorser: user_admin, approved : true)
	r03(Requistion, requistionDate :new LocalDate(), returnDate :new LocalDate().plusDays(7),amount:2,equipments :[e01, e02, e03, e04, e05, e06, e07, e08, e09, e10, e11],borrower: user03, endorser: user_admin, approved : true)
	r04(Requistion, requistionDate :new LocalDate(), returnDate :new LocalDate().plusDays(7),amount:2,equipments :[e01, e02, e03, e04, e05, e06, e07, e08, e09, e10, e11],borrower: user04, endorser: user_admin, approved : true)
	r05(Requistion, requistionDate :new LocalDate(), returnDate :new LocalDate().plusDays(7),amount:2,equipments :[e01, e02, e03, e04, e05, e06, e07, e08, e09, e10, e11],borrower: user05, endorser: user_admin, approved : true)
	
}