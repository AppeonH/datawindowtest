$PBExportHeader$w_slideupui.srw
forward
global type w_slideupui from window
end type
type cb_3 from commandbutton within w_slideupui
end type
type cb_2 from commandbutton within w_slideupui
end type
type cb_clear from commandbutton within w_slideupui
end type
type cb_execute from commandbutton within w_slideupui
end type
type cb_close from commandbutton within w_slideupui
end type
type mle_output from multilineedit within w_slideupui
end type
type lb_items from listbox within w_slideupui
end type
type gb_5 from groupbox within w_slideupui
end type
type mle_describe from multilineedit within w_slideupui
end type
type gb_1 from groupbox within w_slideupui
end type
type gb_2 from groupbox within w_slideupui
end type
type p_1 from picture within w_slideupui
end type
type gb_4 from groupbox within w_slideupui
end type
type gb_3 from groupbox within w_slideupui
end type
type cb_4 from commandbutton within w_slideupui
end type
type sle_1 from singlelineedit within w_slideupui
end type
type dw_1 from datawindow within w_slideupui
end type
type cb_5 from commandbutton within w_slideupui
end type
end forward

global type w_slideupui from window
integer width = 4873
integer height = 3228
boolean titlebar = true
string title = "w_slideupui"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
windowstate windowstate = maximized!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
event type string ue_event ( integer ai_arg,  ref string as_arg )
cb_3 cb_3
cb_2 cb_2
cb_clear cb_clear
cb_execute cb_execute
cb_close cb_close
mle_output mle_output
lb_items lb_items
gb_5 gb_5
mle_describe mle_describe
gb_1 gb_1
gb_2 gb_2
p_1 p_1
gb_4 gb_4
gb_3 gb_3
cb_4 cb_4
sle_1 sle_1
dw_1 dw_1
cb_5 cb_5
end type
global w_slideupui w_slideupui

type variables
//OutPut Index 
Integer ii_index = 0
Boolean ib_IsMax = false
Integer ii_dwWidth,ii_dwHeight,ii_dwX,ii_dwY,ii_pWidth,ii_pHeight,ii_pX,ii_pY
string is_itemstring
end variables

forward prototypes
public subroutine wf_describe ()
public subroutine wf_init_items ()
public subroutine wf_scriptview (string as_script)
public subroutine wf_output (string as_mess, boolean ab_clear)
public subroutine wf_savedw ()
public subroutine wf_scriptexe (string as_item, boolean ab_execute)
public subroutine wf_run (integer ai_item)
public subroutine wf_tabular (string as_item)
public subroutine wf_simpleheaderall (string as_item)
public subroutine wf_simpleheaderdirect (string as_item)
public subroutine wf_complexheaderall (string as_item)
public subroutine wf_complexheaderdirect (string as_item)
public subroutine wf_detailall (string as_item)
public subroutine wf_detaildirect (string as_item)
public subroutine wf_summarydirect (string as_item)
public subroutine wf_summaryall (string as_item)
public subroutine wf_footerall (string as_item)
public subroutine wf_footerdirect (string as_item)
public subroutine wf_slideleft (string as_item)
public subroutine wf_slideupslideleft (string as_item)
end prototypes

event type string ue_event(integer ai_arg, ref string as_arg);//"Call OBJECT Event~r~n RETURN OBJECTNAME.EVENTNAME(ArgType arg_1,ref ArgType arg_2)
//OBJECT should be UserObject,Window,Menu
Wf_output("Call Window Event~r~nString w_case_style_1th.ue_event (integer "+String(ai_arg)+", ref string "+as_arg+")",False)

Return ""
end event

public subroutine wf_describe ();////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////

mle_describe.text  = "1.Appeon Window : "
mle_describe.text +=  Classname() + "~r~n" //This Must be the First output

mle_describe.text += "2.Object Describe : ~r~n" // This must include

mle_describe.text += "3.Testing Purpose : ~r~n" // This must include
mle_describe.text += "Test tag£¬visible and visible property~r~n"
mle_describe.text += "4.Operation Step : ~r~n" // Optional
mle_describe.text += "5.Object Declare : " // Optional

Return

end subroutine

public subroutine wf_init_items ();//////////////////////////////////////////////////////////////////
////Function : 
////Argument : Boolean  ab_execute
////Designer : zhangjun
////Date     : 2005-01-10
//////////////////////////////////////////////////////////////////
integer i = 0

lb_items.reset()
//simple allabove
//lb_items.additem("simpleheaderall   b1")
//lb_items.additem("simpleheaderall   b2")
i++
lb_items.additem(string(i) + " simpleheaderall   b3")
//lb_items.additem("")
//lb_items.additem("simpleheaderall   t1")
//lb_items.additem("simpleheaderall   t2")
i++
lb_items.additem(string(i) + " simpleheaderall   t3")
//lb_items.additem("")
//lb_items.additem("simpleheaderall   p1")
//lb_items.additem("simpleheaderall   p2")
i++
lb_items.additem(string(i) + " simpleheaderall   p3")
//lb_items.additem("")
//lb_items.additem("simpleheaderall   r1")
//lb_items.additem("simpleheaderall   r2")
i++
lb_items.additem(string(i) + " simpleheaderall   r3")
//lb_items.additem("")
//lb_items.additem("simpleheaderall   c1")
//lb_items.additem("simpleheaderall   c2")
i++
lb_items.additem(string(i) + " simpleheaderall   c3")
lb_items.additem("")

//simple directlyabove
//lb_items.additem("simpleheaderdirect  b1")
//lb_items.additem("simpleheaderdirect  b2")
i++
lb_items.additem(string(i) + " simpleheaderdirect  b3")
//lb_items.additem("") 
//lb_items.additem("simpleheaderdirect  t1")
//lb_items.additem("simpleheaderdirect  t2")
i++
lb_items.additem(string(i) + " simpleheaderdirect  t3")
//lb_items.additem("")
//lb_items.additem("simpleheaderdirect  p1")
//lb_items.additem("simpleheaderdirect  p2")
i++
lb_items.additem(string(i) + " simpleheaderdirect  p3")
//lb_items.additem("")
//lb_items.additem("simpleheaderdirect  r1")
//lb_items.additem("simpleheaderdirect  r2")
i++
lb_items.additem(string(i) + " simpleheaderdirect  r3")
//lb_items.additem("")
//lb_items.additem("simpleheaderdirect  c1")
//lb_items.additem("simpleheaderdirect  c2")
i++
lb_items.additem(string(i) + " simpleheaderdirect  c3")
lb_items.additem("")

//complex allabove1
//lb_items.additem("complexheaderall  b1")
//lb_items.additem("complexheaderall  b2")
i++
lb_items.additem(string(i) + " complexheaderall  b3")
//lb_items.additem("") 
//lb_items.additem("complexheaderall  t1")
//lb_items.additem("complexheaderall  t2")
i++
lb_items.additem(string(i) + " complexheaderall  t3")
//lb_items.additem("")
//lb_items.additem("complexheaderall  p1")
//lb_items.additem("complexheaderall  p2")
i++
lb_items.additem(string(i) + " complexheaderall  p3")
//lb_items.additem("")
//lb_items.additem("complexheaderall  r1")
//lb_items.additem("complexheaderall  r2")
i++
lb_items.additem(string(i) + " complexheaderall  r3")
//lb_items.additem("")
//lb_items.additem("complexheaderall  c1")
//lb_items.additem("complexheaderall  c2")
i++
lb_items.additem(string(i) + " complexheaderall  c3")
lb_items.additem("")

//complex allabove2
//lb_items.additem("complexheaderall  b11")
//lb_items.additem("complexheaderall  b22")
i++
lb_items.additem(string(i) + " complexheaderall  b33")
//lb_items.additem("") 
//lb_items.additem("complexheaderall  t11")
//lb_items.additem("complexheaderall  t22")
i++
lb_items.additem(string(i) + "complexheaderall  t33")
//lb_items.additem("")
//lb_items.additem("complexheaderall  p11")
//lb_items.additem("complexheaderall  p22")
i++
lb_items.additem(string(i) + " complexheaderall  p33")
//lb_items.additem("")
//lb_items.additem("complexheaderall  r11")
//lb_items.additem("complexheaderall  r22")
i++
lb_items.additem(string(i) + " complexheaderall  r33")
//lb_items.additem("")
//lb_items.additem("complexheaderall  c11")
//lb_items.additem("complexheaderall  c22")
i++
lb_items.additem(string(i) + " complexheaderall  c33")
lb_items.additem("")

//complex directlyabove1
//lb_items.additem("complexheaderdirect  b1")
//lb_items.additem("complexheaderdirect  b2")
i++
lb_items.additem(string(i) + " complexheaderdirect  b3")
//lb_items.additem("") 
//lb_items.additem("complexheaderdirect  t1")
//lb_items.additem("complexheaderdirect  t2")
i++
lb_items.additem(string(i) + " complexheaderdirect  t3")
//lb_items.additem("")
//lb_items.additem("complexheaderdirect  p1")
//lb_items.additem("complexheaderdirect  p2")
i++
lb_items.additem(string(i) + " complexheaderdirect  p3")
//lb_items.additem("")
//lb_items.additem("complexheaderdirect  r1")
//lb_items.additem("complexheaderdirect  r2")
i++
lb_items.additem(string(i) + " complexheaderdirect  r3")
//lb_items.additem("")
//lb_items.additem("complexheaderdirect  c1")
//lb_items.additem("complexheaderdirect  c2")
i++
lb_items.additem(string(i) + " complexheaderdirect  c3")
lb_items.additem("")

//complex directlyabove2
//lb_items.additem("complexheaderdirect  b11")
//lb_items.additem("complexheaderdirect  b22")
i++
lb_items.additem(string(i) + " complexheaderdirect  b33")
//lb_items.additem("") 
//lb_items.additem("complexheaderdirect  t11")
//lb_items.additem("complexheaderdirect  t22")
i++
lb_items.additem(string(i) + " complexheaderdirect  t33")
//lb_items.additem("")
//lb_items.additem("complexheaderdirect  p11")
//lb_items.additem("complexheaderdirect  p22")
i++
lb_items.additem(string(i) + " complexheaderdirect  p33")
//lb_items.additem("")
//lb_items.additem("complexheaderdirect  r11")
//lb_items.additem("complexheaderdirect  r22")
i++
lb_items.additem(string(i) + " complexheaderdirect  r33")
//lb_items.additem("")
//lb_items.additem("complexheaderdirect  c11")
//lb_items.additem("complexheaderdirect  c22")
i++
lb_items.additem(string(i) + " complexheaderdirect  c33")
lb_items.additem("")

//simple detail allabove
i++
lb_items.additem(string(i) + " detailall  b1")
i++
lb_items.additem(string(i) + " detailall  t1")
i++
lb_items.additem(string(i) + " detailall  p1")
i++
lb_items.additem(string(i) + " detailall  r1")
i++
lb_items.additem(string(i) + " detailall  c1")
lb_items.additem("")

//complex detail all
i++
lb_items.additem(string(i) + " detailall  b11")
i++
lb_items.additem(string(i) + " detailall  t11")
i++
lb_items.additem(string(i) + " detailall  p11")
i++
lb_items.additem(string(i) + " detailall  r11")
i++
lb_items.additem(string(i) + " detailall  c11")
i++
lb_items.additem(string(i) + " detailall  column11")
lb_items.additem("")


//simple detail directle
i++
lb_items.additem(string(i) + " detaildirect  b1")
i++
lb_items.additem(string(i) + " detaildirect  t1")
i++
lb_items.additem(string(i) + " detaildirect  p1")
i++
lb_items.additem(string(i) + " detaildirect  r1")
i++
lb_items.additem(string(i) + " detaildirect  c1")
lb_items.additem("")

//complex detail directle
i++
lb_items.additem(string(i) + " detaildirect  b11")
i++
lb_items.additem(string(i) + " detaildirect  t11")
i++
lb_items.additem(string(i) + " detaildirect  p11")
i++
lb_items.additem(string(i) + " detaildirect  r11")
i++
lb_items.additem(string(i) + " detaildirect  c11")
i++
lb_items.additem(string(i) + " detaildirect  column11")
lb_items.additem("")

//simple summary all
i++
lb_items.additem(string(i) + " summaryall  b1")
i++
lb_items.additem(string(i) + " summaryall  t1")
i++
lb_items.additem(string(i) + " summaryall  p1")
i++
lb_items.additem(string(i) + " summaryall  r1")
i++
lb_items.additem(string(i) + " summaryall  c1")
lb_items.additem("")

//complex summary all
i++
lb_items.additem(string(i) + " summaryall  b11")
i++
lb_items.additem(string(i) + " summaryall  t11")
i++
lb_items.additem(string(i) + " summaryall  p11")
i++
lb_items.additem(string(i) + " summaryall  r11")
i++
lb_items.additem(string(i) + " summaryall  c11")
i++
lb_items.additem(string(i) + " summaryall  column11")
lb_items.additem("")


//simple summary directle
i++
lb_items.additem(string(i) + " summarydirect  b1")
i++
lb_items.additem(string(i) + " summarydirect  t1")
i++
lb_items.additem(string(i) + " summarydirect  p1")
i++
lb_items.additem(string(i) + " summarydirect  r1")
i++
lb_items.additem(string(i) + " summarydirect  c1")
lb_items.additem("")

//complex summary directle
i++
lb_items.additem(string(i) + " summarydirect  b11")
i++
lb_items.additem(string(i) + " summarydirect  t11")
i++
lb_items.additem(string(i) + " summarydirect  p11")
i++
lb_items.additem(string(i) + " summarydirect  r11")
i++
lb_items.additem(string(i) + " summarydirect  c11")
i++
lb_items.additem(string(i) + " summarydirect  column11")
lb_items.additem("")

//simple footer all
i++
lb_items.additem(string(i) + " footerall  b1")
i++
lb_items.additem(string(i) + " footerall  t1")
i++
lb_items.additem(string(i) + " footerall  p1")
i++
lb_items.additem(string(i) + " footerall  r1")
i++
lb_items.additem(string(i) + " footerall  c1")
lb_items.additem("")

//complex footer all
i++
lb_items.additem(string(i) + " footerall  b11")
i++
lb_items.additem(string(i) + " footerall  t11")
i++
lb_items.additem(string(i) + " footerall  p11")
i++
lb_items.additem(string(i) + " footerall  r11")
i++
lb_items.additem(string(i) + " footerall  c11")
i++
lb_items.additem(string(i) + " footerall  column11")
lb_items.additem("")


//simple footer directle
i++
lb_items.additem(string(i) + " footerdirect  b1")
i++
lb_items.additem(string(i) + " footerdirect  t1")
i++
lb_items.additem(string(i) + " footerdirect  p1")
i++
lb_items.additem(string(i) + " footerdirect  r1")
i++
lb_items.additem(string(i) + " footerdirect  c1")
i++
lb_items.additem("")

//complex footer directle
i++
lb_items.additem(string(i) + " footerdirect  b11")
i++
lb_items.additem(string(i) + " footerdirect  t11")
i++
lb_items.additem(string(i) + " footerdirect  p11")
i++
lb_items.additem(string(i) + " footerdirect  r11")
i++
lb_items.additem(string(i) + " footerdirect  c11")
i++
lb_items.additem(string(i) + " footerdirect  column11")
lb_items.additem("")

//slideleft
i++
lb_items.additem(string(i) + " slideleft  b1")
i++
lb_items.additem(string(i) + " slideleft  t1")
i++
lb_items.additem(string(i) + " slideleft  p1")
i++
lb_items.additem(string(i) + " slideleft  r1")
i++
lb_items.additem(string(i) + " slideleft  c1")
i++
lb_items.additem(string(i) + " slideleft  b1c1")
i++
lb_items.additem(string(i) + " slideleft  b1t1c1")
i++
lb_items.additem(string(i) + " slideleft  column")
i++
lb_items.additem(string(i) + " slideleft  all")
lb_items.additem("")

//slideleft visible
//lb_items.additem("slideleft  vb1")
//lb_items.additem("slideleft  vt1")
//lb_items.additem("slideleft  vp1")
//lb_items.additem("slideleft  vr1")
i++
lb_items.additem(string(i) + " slideleft  vc1")
//lb_items.additem("slideleft  vb1c1")
//lb_items.additem("slideleft  vb1t1c1")
i++
lb_items.additem(string(i) + " slideleft  vcolumn")
i++
lb_items.additem(string(i) + " slideleft  vsome")
lb_items.additem("")

i++
lb_items.additem(string(i) + " combin slideupslideleft")





















end subroutine

public subroutine wf_scriptview (string as_script);
end subroutine

public subroutine wf_output (string as_mess, boolean ab_clear);////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////

If ab_clear Then
mle_output.Text = ""
ii_index = 0
End IF	

ii_index = ii_index + 1
mle_output.Text += String(ii_index,'00')+". "+as_mess+"~r~n"
end subroutine

public subroutine wf_savedw ();////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////

ii_dwX  = dw_1.x
ii_dwY = dw_1.y
ii_dwWidth  = dw_1.Width
ii_dwHeight = dw_1.Height

ii_pX  = p_1.x
ii_pY = p_1.y
ii_pWidth  = p_1.Width
ii_pHeight = p_1.Height

end subroutine

public subroutine wf_scriptexe (string as_item, boolean ab_execute);////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////


end subroutine

public subroutine wf_run (integer ai_item);//simpleheaderall   b1   (emp_id_t.font.height = 100)
string ls_item, ls_testitem
int li_pos
ls_item = lb_items.text(ai_item)
li_pos = pos(ls_item,' ')
ls_item = mid(ls_item,li_pos)
ls_item = trim(ls_item)
li_pos = pos(ls_item,' ')
ls_testitem = mid(ls_item,1,li_pos - 1)

ls_item = mid(ls_item,li_pos)
ls_item = trim(ls_item)
dw_1.setredraw(false)
choose case ls_testitem
	case 'simpleheaderall'
		wf_simpleheaderall(ls_item)
	case 'simpleheaderdirect'
		wf_simpleheaderdirect(ls_item)
	case 'complexheaderall'
		wf_complexheaderall(ls_item)
	case 'complexheaderdirect'
		wf_complexheaderdirect(ls_item)
	case 'detailall'
		wf_detailall(ls_item)
	case 'detaildirect'
		wf_detaildirect(ls_item)
	case 'summaryall'
		wf_summaryall(ls_item)
	case 'summarydirect'
		wf_summarydirect(ls_item)
	case 'footerall'
		wf_footerall(ls_item)
	case 'footerdirect'
		wf_footerdirect(ls_item)
	case 'slideleft'
		wf_slideleft(ls_item)
	case 'combin'
		wf_slideupslideleft(ls_item)
end choose
dw_1.setredraw(true)
//IF index > 0 THEN
//	//wf_Scriptexe(lb_items.selectedindex(),True)
//	ls_itemstring = left(lb_items.text(index),10)	
//	ls_itemstring = trim(ls_itemstring)
//	p_1.setredraw(false)
//	p_1.PictureName = ls_itemstring + ".bmp"
//	p_1.setredraw(true)
//END IF
end subroutine

public subroutine wf_tabular (string as_item);//lb_items.additem("tabular header   b1   (emp_id_t.font.height = 100)")
string ls_testitem,ls_testitemdetail,ls_testnumber

ls_testitem = mid(as_item,9,6)
ls_testitemdetail = mid(as_item,15,3)
ls_testitemdetail = trim(ls_testitemdetail)

ls_testnumber = right(as_item,4)
ls_testnumber = trim(ls_testnumber)
dw_1.setredraw(false)

choose case ls_testitem
	case 'header'					
	case 'detail'
	case 'summary'
	case 'footer'
end choose
dw_1.setredraw(true)
end subroutine

public subroutine wf_simpleheaderall (string as_item);//string ls_testitem
//int li_pos
//
//li_pos = pos(as_item,' ')
//ls_testitem = mid(as_item,1,li_pos - 1)

//simple All above
dw_1.dataobject = "d_tabular_header"
dw_1.settransobject(sqlca)
dw_1.modify("b_1.SlideUp = AllAbove")
dw_1.modify("t_1.SlideUp = AllAbove")
dw_1.modify("p_1.SlideUp = AllAbove")
dw_1.modify("r_1.SlideUp = AllAbove")
dw_1.modify("c_1.SlideUp = AllAbove")
choose case as_item
	//button
	case 'b1'
		dw_1.modify('emp_id_t.font.height = 100')	
		p_1.PictureName = "slideup\thb1.bmp"
	case 'b2'
		dw_1.modify('emp_id_t.font.height = 200')
		p_1.PictureName = "slideup\thb2.bmp"
	case 'b3'
		dw_1.modify('emp_id_t.font.height = 300')
		p_1.PictureName = "slideup\thb3.bmp"
	//text	
	case 't1'
		dw_1.modify('manager_id_t.font.height = 100')
		p_1.PictureName = "slideup\tht1.bmp"
	case 't2'
		dw_1.modify('manager_id_t.font.height = 200')
		p_1.PictureName = "slideup\tht2.bmp"
	case 't3'
		dw_1.modify('manager_id_t.font.height = 300')
		p_1.PictureName = "slideup\tht3.bmp"
	//picture	
	case 'p1'
		dw_1.modify('emp_fname_t.font.height = 100')		
		p_1.PictureName = "slideup\thp1.bmp"
	case 'p2'
		dw_1.modify('emp_fname_t.font.height = 200')
		p_1.PictureName = "slideup\thp2.bmp"
	case 'p3'
		dw_1.modify('emp_fname_t.font.height = 300')
		p_1.PictureName = "slideup\thp3.bmp"
	//round
	case 'r1'
		dw_1.modify('emp_lname_t.font.height = 100')		
		p_1.PictureName = "slideup\thr1.bmp"
	case 'r2'
		dw_1.modify('emp_lname_t.font.height = 200')
		p_1.PictureName = "slideup\thr2.bmp"
	case 'r3'
		dw_1.modify('emp_lname_t.font.height = 300')
		p_1.PictureName = "slideup\thr3.bmp"
	//compute	
	case 'c1'
		dw_1.modify('dept_id_t.font.height = 100')		
		p_1.PictureName = "slideup\thc1.bmp"
	case 'c2'
		dw_1.modify('dept_id_t.font.height = 200')
		p_1.PictureName = "slideup\thc2.bmp"
	case 'c3'
		dw_1.modify('dept_id_t.font.height = 300')
		p_1.PictureName = "slideup\thc3.bmp"
end choose


end subroutine

public subroutine wf_simpleheaderdirect (string as_item);//string ls_testitem
//int li_pos
//li_pos = pos(as_item,' ')
//ls_testitem = mid(as_item,1,li_pos - 1)
//simple Directly above
dw_1.dataobject = "d_tabular_header"
dw_1.settransobject(sqlca)
dw_1.modify("b_1.SlideUp = DirectlyAbove")
dw_1.modify("t_1.SlideUp = DirectlyAbove")
dw_1.modify("p_1.SlideUp = DirectlyAbove")
dw_1.modify("r_1.SlideUp = DirectlyAbove")
dw_1.modify("c_1.SlideUp = DirectlyAbove")
choose case as_item
	//button
	case 'b1'
		dw_1.modify('emp_id_t.font.height = 100')	
		p_1.PictureName = "slideup\dthb1.bmp"
	case 'b2'
		dw_1.modify('emp_id_t.font.height = 200')
		p_1.PictureName = "slideup\dthb2.bmp"
	case 'b3'
		dw_1.modify('emp_id_t.font.height = 300')
		p_1.PictureName = "slideup\dthb3.bmp"
	//text	
	case 't1'
		dw_1.modify('manager_id_t.font.height = 100')
		p_1.PictureName = "slideup\dtht1.bmp"
	case 't2'
		dw_1.modify('manager_id_t.font.height = 200')
		p_1.PictureName = "slideup\dtht2.bmp"
	case 't3'
		dw_1.modify('manager_id_t.font.height = 300')
		p_1.PictureName = "slideup\dtht3.bmp"
	//picture	
	case 'p1'
		dw_1.modify('emp_fname_t.font.height = 100')		
		p_1.PictureName = "slideup\dthp1.bmp"
	case 'p2'
		dw_1.modify('emp_fname_t.font.height = 200')
		p_1.PictureName = "slideup\dthp2.bmp"
	case 'p3'
		dw_1.modify('emp_fname_t.font.height = 300')
		p_1.PictureName = "slideup\dthp3.bmp"
	//round
	case 'r1'
		dw_1.modify('emp_lname_t.font.height = 100')		
		p_1.PictureName = "slideup\dthr1.bmp"
	case 'r2'
		dw_1.modify('emp_lname_t.font.height = 200')
		p_1.PictureName = "slideup\dthr2.bmp"
	case 'r3'
		dw_1.modify('emp_lname_t.font.height = 300')
		p_1.PictureName = "slideup\dthr3.bmp"
	//compute	
	case 'c1'
		dw_1.modify('dept_id_t.font.height = 100')		
		p_1.PictureName = "slideup\dthc1.bmp"
	case 'c2'
		dw_1.modify('dept_id_t.font.height = 200')
		p_1.PictureName = "slideup\dthc2.bmp"
	case 'c3'
		dw_1.modify('dept_id_t.font.height = 300')
		p_1.PictureName = "slideup\dthc3.bmp"
end choose
end subroutine

public subroutine wf_complexheaderall (string as_item);//string ls_testitem
//int li_pos
//
//li_pos = pos(as_item,' ')
//ls_testitem = mid(as_item,1,li_pos - 1)

//complex All above
dw_1.dataobject = "d_tabular_header_com"
dw_1.settransobject(sqlca)
dw_1.modify("b_1.SlideUp = AllAbove")
dw_1.modify("t_1.SlideUp = AllAbove")
dw_1.modify("p_1.SlideUp = AllAbove")
dw_1.modify("r_1.SlideUp = AllAbove")
dw_1.modify("c_1.SlideUp = AllAbove")
choose case as_item
	//button
	case 'b1'
		dw_1.modify('emp_id_t.font.height = 100')	
		p_1.PictureName = "slideup\cthb1.bmp"
	case 'b2'
		dw_1.modify('emp_id_t.font.height = 200')
		p_1.PictureName = "slideup\cthb2.bmp"
	case 'b3'
		dw_1.modify('emp_id_t.font.height = 300')
		p_1.PictureName = "slideup\cthb3.bmp"
	//text	
	case 't1'
		dw_1.modify('manager_id_t.font.height = 100')
		p_1.PictureName = "slideup\ctht1.bmp"
	case 't2'
		dw_1.modify('manager_id_t.font.height = 200')
		p_1.PictureName = "slideup\ctht2.bmp"
	case 't3'
		dw_1.modify('manager_id_t.font.height = 300')
		p_1.PictureName = "slideup\ctht3.bmp"
	//picture	
	case 'p1'
		dw_1.modify('emp_fname_t.font.height = 100')		
		p_1.PictureName = "slideup\cthp1.bmp"
	case 'p2'
		dw_1.modify('emp_fname_t.font.height = 200')
		p_1.PictureName = "slideup\cthp2.bmp"
	case 'p3'
		dw_1.modify('emp_fname_t.font.height = 300')
		p_1.PictureName = "slideup\cthp3.bmp"
	//round
	case 'r1'
		dw_1.modify('emp_lname_t.font.height = 100')		
		p_1.PictureName = "slideup\cthr1.bmp"
	case 'r2'
		dw_1.modify('emp_lname_t.font.height = 200')
		p_1.PictureName = "slideup\cthr2.bmp"
	case 'r3'
		dw_1.modify('emp_lname_t.font.height = 300')
		p_1.PictureName = "slideup\cthr3.bmp"
	//compute	
	case 'c1'
		dw_1.modify('dept_id_t.font.height = 100')		
		p_1.PictureName = "slideup\cthc1.bmp"
	case 'c2'
		dw_1.modify('dept_id_t.font.height = 200')
		p_1.PictureName = "slideup\cthc2.bmp"
	case 'c3'
		dw_1.modify('dept_id_t.font.height = 300')
		p_1.PictureName = "slideup\cthc3.bmp"
		
	//button
	case 'b11'
		dw_1.modify('t_2.font.height = 100')	
		p_1.PictureName = "slideup\cthb11.bmp"
	case 'b22'
		dw_1.modify('t_2.font.height = 200')
		p_1.PictureName = "slideup\cthb22.bmp"
	case 'b33'
		dw_1.modify('t_2.font.height = 300')
		p_1.PictureName = "slideup\cthb33.bmp"
	//text	
	case 't11'
		dw_1.modify('t_3.font.height = 100')
		p_1.PictureName = "slideup\ctht11.bmp"
	case 't22'
		dw_1.modify('t_3.font.height = 200')
		p_1.PictureName = "slideup\ctht22.bmp"
	case 't33'
		dw_1.modify('t_3.font.height = 300')
		p_1.PictureName = "slideup\ctht33.bmp"
	//picture	
	case 'p11'
		dw_1.modify('t_4.font.height = 100')		
		p_1.PictureName = "slideup\cthp11.bmp"
	case 'p22'
		dw_1.modify('t_4.font.height = 200')
		p_1.PictureName = "slideup\cthp22.bmp"
	case 'p33'
		dw_1.modify('t_4.font.height = 300')
		p_1.PictureName = "slideup\cthp33.bmp"
	//round
	case 'r11'
		dw_1.modify('t_5.font.height = 100')		
		p_1.PictureName = "slideup\cthr11.bmp"
	case 'r22'
		dw_1.modify('t_5.font.height = 200')
		p_1.PictureName = "slideup\cthr22.bmp"
	case 'r33'
		dw_1.modify('t_5.font.height = 300')
		p_1.PictureName = "slideup\cthr33.bmp"
	//compute	
	case 'c11'
		dw_1.modify('t_6.font.height = 100')		
		p_1.PictureName = "slideup\cthc11.bmp"
	case 'c22'
		dw_1.modify('t_6.font.height = 200')
		p_1.PictureName = "slideup\cthc22.bmp"
	case 'c33'
		dw_1.modify('t_6.font.height = 300')
		p_1.PictureName = "slideup\cthc33.bmp"
end choose


end subroutine

public subroutine wf_complexheaderdirect (string as_item);//string ls_testitem
//int li_pos
//li_pos = pos(as_item,' ')
//ls_testitem = mid(as_item,1,li_pos - 1)
//complex Directly above
dw_1.dataobject = "d_tabular_header_com"
dw_1.settransobject(sqlca)
dw_1.modify("b_1.SlideUp = DirectlyAbove")
dw_1.modify("t_1.SlideUp = DirectlyAbove")
dw_1.modify("p_1.SlideUp = DirectlyAbove")
dw_1.modify("r_1.SlideUp = DirectlyAbove")
dw_1.modify("c_1.SlideUp = DirectlyAbove")
choose case as_item
	//button
	case 'b1'
		dw_1.modify('emp_id_t.font.height = 100')	
		p_1.PictureName = "slideup\cdthb1.bmp"
	case 'b2'
		dw_1.modify('emp_id_t.font.height = 200')
		p_1.PictureName = "slideup\cdthb2.bmp"
	case 'b3'
		dw_1.modify('emp_id_t.font.height = 300')
		p_1.PictureName = "slideup\cdthb3.bmp"
	//text	
	case 't1'
		dw_1.modify('manager_id_t.font.height = 100')
		p_1.PictureName = "slideup\cdtht1.bmp"
	case 't2'
		dw_1.modify('manager_id_t.font.height = 200')
		p_1.PictureName = "slideup\cdtht2.bmp"
	case 't3'
		dw_1.modify('manager_id_t.font.height = 300')
		p_1.PictureName = "slideup\cdtht3.bmp"
	//picture	
	case 'p1'
		dw_1.modify('emp_fname_t.font.height = 100')		
		p_1.PictureName = "slideup\cdthp1.bmp"
	case 'p2'
		dw_1.modify('emp_fname_t.font.height = 200')
		p_1.PictureName = "slideup\cdthp2.bmp"
	case 'p3'
		dw_1.modify('emp_fname_t.font.height = 300')
		p_1.PictureName = "slideup\cdthp3.bmp"
	//round
	case 'r1'
		dw_1.modify('emp_lname_t.font.height = 100')		
		p_1.PictureName = "slideup\cdthr1.bmp"
	case 'r2'
		dw_1.modify('emp_lname_t.font.height = 200')
		p_1.PictureName = "slideup\cdthr2.bmp"
	case 'r3'
		dw_1.modify('emp_lname_t.font.height = 300')
		p_1.PictureName = "slideup\cdthr3.bmp"
	//compute	
	case 'c1'
		dw_1.modify('dept_id_t.font.height = 100')		
		p_1.PictureName = "slideup\cdthc1.bmp"
	case 'c2'
		dw_1.modify('dept_id_t.font.height = 200')
		p_1.PictureName = "slideup\cdthc2.bmp"
	case 'c3'
		dw_1.modify('dept_id_t.font.height = 300')
		p_1.PictureName = "slideup\cdthc3.bmp"
		
	//button
	case 'b11'
		dw_1.modify('t_2.font.height = 100')	
		p_1.PictureName = "slideup\cdthb11.bmp"
	case 'b22'
		dw_1.modify('t_2.font.height = 200')
		p_1.PictureName = "slideup\cdthb22.bmp"
	case 'b33'
		dw_1.modify('t_2.font.height = 300')
		p_1.PictureName = "slideup\cdthb33.bmp"
	//text	
	case 't11'
		dw_1.modify('t_3.font.height = 100')
		p_1.PictureName = "slideup\cdtht11.bmp"
	case 't22'
		dw_1.modify('t_3.font.height = 200')
		p_1.PictureName = "slideup\cdtht22.bmp"
	case 't33'
		dw_1.modify('t_3.font.height = 300')
		p_1.PictureName = "slideup\cdtht33.bmp"
	//picture	
	case 'p11'
		dw_1.modify('t_4.font.height = 100')		
		p_1.PictureName = "slideup\cdthp11.bmp"
	case 'p22'
		dw_1.modify('t_4.font.height = 200')
		p_1.PictureName = "slideup\cdthp22.bmp"
	case 'p33'
		dw_1.modify('t_4.font.height = 300')
		p_1.PictureName = "slideup\cdthp33.bmp"
	//round
	case 'r11'
		dw_1.modify('t_5.font.height = 100')		
		p_1.PictureName = "slideup\cdthr11.bmp"
	case 'r22'
		dw_1.modify('t_5.font.height = 200')
		p_1.PictureName = "slideup\cdthr22.bmp"
	case 'r33'
		dw_1.modify('t_5.font.height = 300')
		p_1.PictureName = "slideup\cdthr33.bmp"
	//compute	
	case 'c11'
		dw_1.modify('t_6.font.height = 100')		
		p_1.PictureName = "slideup\cdthc11.bmp"
	case 'c22'
		dw_1.modify('t_6.font.height = 200')
		p_1.PictureName = "slideup\cdthc22.bmp"
	case 'c33'
		dw_1.modify('t_6.font.height = 300')
		p_1.PictureName = "slideup\cdthc33.bmp"
end choose

end subroutine

public subroutine wf_detailall (string as_item);dw_1.dataobject = "d_tabular_detail"
dw_1.settransobject(sqlca)
dw_1.retrieve()
dw_1.modify("b_1.SlideUp = AllAbove")
dw_1.modify("t_1.SlideUp = AllAbove")
dw_1.modify("p_1.SlideUp = AllAbove")
dw_1.modify("r_1.SlideUp = AllAbove")
dw_1.modify("c_1.SlideUp = AllAbove")
dw_1.modify("t_2.SlideUp = AllAbove")
dw_1.modify("t_3.SlideUp = AllAbove")
dw_1.modify("t_4.SlideUp = AllAbove")
dw_1.modify("t_5.SlideUp = AllAbove")
dw_1.modify("t_6.SlideUp = AllAbove")
dw_1.modify("emp_id.SlideUp = AllAbove")
dw_1.modify("manager_id.SlideUp = AllAbove")
dw_1.modify("emp_fname.SlideUp = AllAbove")
dw_1.modify("emp_lanme.SlideUp = AllAbove")
dw_1.modify("dept_id.SlideUp = AllAbove")
dw_1.modify("street.SlideUp = AllAbove")
choose case as_item
	//button
	case 'b1'
		dw_1.modify('emp_id.font.height = 400')	
		p_1.PictureName = "slideup\ctdb1.bmp"
	//text	
	case 't1'
		dw_1.modify('manager_id.font.height = 400')
		p_1.PictureName = "slideup\ctdt1.bmp"
	//picture	
	case 'p1'
		dw_1.modify('emp_fname.font.height = 400')		
		p_1.PictureName = "slideup\ctdp1.bmp"
	//round
	case 'r1'
		dw_1.modify('emp_lname.font.height = 400')		
		p_1.PictureName = "slideup\ctdr1.bmp"
	//compute	
	case 'c1'
		dw_1.modify('dept_id.font.height = 400')		
		p_1.PictureName = "slideup\ctdc1.bmp"
		
	//button
	case 'b11'
		dw_1.modify('t_2.font.height = 400')	
		p_1.PictureName = "slideup\ctdb11.bmp"
	//text	
	case 't11'
		dw_1.modify('t_3.font.height = 400')
		p_1.PictureName = "slideup\ctdt11.bmp"
	//picture	
	case 'p11'
		dw_1.modify('t_4.font.height = 400')		
		p_1.PictureName = "slideup\ctdp11.bmp"
	//round
	case 'r11'
		dw_1.modify('t_5.font.height = 400')		
		p_1.PictureName = "slideup\ctdr11.bmp"
	//compute	
	case 'c11'
		dw_1.modify('t_6.font.height = 400')		
		p_1.PictureName = "slideup\ctdc11.bmp"
	case 'column11'
		dw_1.modify('street.font.height = 200')		
		p_1.PictureName = "slideup\ctdcolumn11.bmp"
end choose


end subroutine

public subroutine wf_detaildirect (string as_item);dw_1.dataobject = "d_tabular_detail"
dw_1.settransobject(sqlca)
dw_1.retrieve()
dw_1.modify("b_1.SlideUp = DirectlyAbove")
dw_1.modify("t_1.SlideUp = DirectlyAbove")
dw_1.modify("p_1.SlideUp = DirectlyAbove")
dw_1.modify("r_1.SlideUp = DirectlyAbove")
dw_1.modify("c_1.SlideUp = DirectlyAbove")
dw_1.modify("t_2.SlideUp = DirectlyAbove")
dw_1.modify("t_3.SlideUp = DirectlyAbove")
dw_1.modify("t_4.SlideUp = DirectlyAbove")
dw_1.modify("t_5.SlideUp = DirectlyAbove")
dw_1.modify("t_6.SlideUp = DirectlyAbove")
dw_1.modify("emp_id.SlideUp = DirectlyAbove")
dw_1.modify("manager_id.SlideUp = DirectlyAbove")
dw_1.modify("emp_fname.SlideUp = DirectlyAbove")
dw_1.modify("emp_lanme.SlideUp = DirectlyAbove")
dw_1.modify("dept_id.SlideUp = DirectlyAbove")
dw_1.modify("street.SlideUp = DirectlyAbove")

choose case as_item
	//button
	case 'b1'
		dw_1.modify('emp_id.font.height = 400')	
		p_1.PictureName = "slideup\cdtdb1.bmp"
	//text	
	case 't1'
		dw_1.modify('manager_id.font.height = 400')
		p_1.PictureName = "slideup\cdtdt1.bmp"
	//picture	
	case 'p1'
		dw_1.modify('emp_fname.font.height = 400')		
		p_1.PictureName = "slideup\cdtdp1.bmp"
	//round
	case 'r1'
		dw_1.modify('emp_lname.font.height = 400')		
		p_1.PictureName = "slideup\cdtdr1.bmp"
	//compute	
	case 'c1'
		dw_1.modify('dept_id.font.height = 400')		
		p_1.PictureName = "slideup\cdtdc1.bmp"
		
	//button
	case 'b11'
		dw_1.modify('t_2.font.height = 400')	
		p_1.PictureName = "slideup\cdtdb11.bmp"
	//text	
	case 't11'
		dw_1.modify('t_3.font.height = 400')
		p_1.PictureName = "slideup\cdtdt11.bmp"
	//picture	
	case 'p11'
		dw_1.modify('t_4.font.height = 400')		
		p_1.PictureName = "slideup\cdtdp11.bmp"
	//round
	case 'r11'
		dw_1.modify('t_5.font.height = 400')		
		p_1.PictureName = "slideup\cdtdr11.bmp"
	//compute	
	case 'c11'
		dw_1.modify('t_6.font.height = 400')		
		p_1.PictureName = "slideup\cdtdc11.bmp"
	case 'column11'
		dw_1.modify('street.font.height = 200')		
		p_1.PictureName = "slideup\cdtdcolumn11.bmp"
end choose


end subroutine

public subroutine wf_summarydirect (string as_item);dw_1.dataobject = "d_tabular_summary"
dw_1.settransobject(sqlca)
dw_1.retrieve()
dw_1.modify("b_1.SlideUp = DirectlyAbove")
dw_1.modify("t_1.SlideUp = DirectlyAbove")
dw_1.modify("p_1.SlideUp = DirectlyAbove")
dw_1.modify("r_1.SlideUp = DirectlyAbove")
dw_1.modify("c_1.SlideUp = DirectlyAbove")
dw_1.modify("t_2.SlideUp = DirectlyAbove")
dw_1.modify("t_3.SlideUp = DirectlyAbove")
dw_1.modify("t_4.SlideUp = DirectlyAbove")
dw_1.modify("t_5.SlideUp = DirectlyAbove")
dw_1.modify("t_6.SlideUp = DirectlyAbove")
dw_1.modify("emp_id_t.SlideUp = DirectlyAbove")
dw_1.modify("manager_id_t.SlideUp = DirectlyAbove")
dw_1.modify("emp_fname_t.SlideUp = DirectlyAbove")
dw_1.modify("emp_lanme_t.SlideUp = DirectlyAbove")
dw_1.modify("dept_id_t.SlideUp = DirectlyAbove")
dw_1.modify("street_t.SlideUp = DirectlyAbove")

choose case as_item
	//button
	case 'b1'
		dw_1.modify('emp_id_t.font.height = 200')	
		p_1.PictureName = "slideup\cdtsb1.bmp"
	//text	
	case 't1'
		dw_1.modify('manager_id_t.font.height = 200')
		p_1.PictureName = "slideup\cdtst1.bmp"
	//picture	
	case 'p1'
		dw_1.modify('emp_fname_t.font.height = 200')		
		p_1.PictureName = "slideup\cdtsp1.bmp"
	//round
	case 'r1'
		dw_1.modify('emp_lname_t.font.height = 200')		
		p_1.PictureName = "slideup\cdtsr1.bmp"
	//compute	
	case 'c1'
		dw_1.modify('dept_id_t.font.height = 200')		
		p_1.PictureName = "slideup\cdtsc1.bmp"
		
	//button
	case 'b11'
		dw_1.modify('t_2.font.height = 200')	
		p_1.PictureName = "slideup\cdtsb11.bmp"
	//text	
	case 't11'
		dw_1.modify('t_3.font.height = 200')
		p_1.PictureName = "slideup\cdtst11.bmp"
	//picture	
	case 'p11'
		dw_1.modify('t_4.font.height = 200')		
		p_1.PictureName = "slideup\cdtsp11.bmp"
	//round
	case 'r11'
		dw_1.modify('t_5.font.height = 200')		
		p_1.PictureName = "slideup\cdtsr11.bmp"
	//compute	
	case 'c11'
		dw_1.modify('t_6.font.height = 200')		
		p_1.PictureName = "slideup\cdtsc11.bmp"
	case 'column11'
		dw_1.modify('street.font.height = 200')		
		p_1.PictureName = "slideup\cdtscolumn11.bmp"
end choose


end subroutine

public subroutine wf_summaryall (string as_item);dw_1.dataobject = "d_tabular_summary"
dw_1.settransobject(sqlca)
dw_1.retrieve()
dw_1.modify("b_1.SlideUp = AllAbove")
dw_1.modify("t_1.SlideUp = AllAbove")
dw_1.modify("p_1.SlideUp = AllAbove")
dw_1.modify("r_1.SlideUp = AllAbove")
dw_1.modify("c_1.SlideUp = AllAbove")
dw_1.modify("t_2.SlideUp = AllAbove")
dw_1.modify("t_3.SlideUp = AllAbove")
dw_1.modify("t_4.SlideUp = AllAbove")
dw_1.modify("t_5.SlideUp = AllAbove")
dw_1.modify("t_6.SlideUp = AllAbove")
dw_1.modify("emp_id_t.SlideUp = AllAbove")
dw_1.modify("manager_id_t.SlideUp = AllAbove")
dw_1.modify("emp_fname_t.SlideUp = AllAbove")
dw_1.modify("emp_lanme_t.SlideUp = AllAbove")
dw_1.modify("dept_id_t.SlideUp = AllAbove")
dw_1.modify("street_t.SlideUp = AllAbove")
choose case as_item
	//button
	case 'b1'
		dw_1.modify('emp_id_t.font.height = 200')	
		p_1.PictureName = "slideup\ctsb1.bmp"
	//text	
	case 't1'
		dw_1.modify('manager_id_t.font.height = 200')
		p_1.PictureName = "slideup\ctst1.bmp"
	//picture	
	case 'p1'
		dw_1.modify('emp_fname_t.font.height = 200')		
		p_1.PictureName = "slideup\ctsp1.bmp"
	//round
	case 'r1'
		dw_1.modify('emp_lname_t.font.height = 200')		
		p_1.PictureName = "slideup\ctsr1.bmp"
	//compute	
	case 'c1'
		dw_1.modify('dept_id_t.font.height = 200')		
		p_1.PictureName = "slideup\ctsc1.bmp"
		
	//button
	case 'b11'
		dw_1.modify('t_2.font.height = 200')	
		p_1.PictureName = "slideup\ctsb11.bmp"
	//text	
	case 't11'
		dw_1.modify('t_3.font.height = 200')
		p_1.PictureName = "slideup\ctst11.bmp"
	//picture	
	case 'p11'
		dw_1.modify('t_4.font.height = 200')		
		p_1.PictureName = "slideup\ctsp11.bmp"
	//round
	case 'r11'
		dw_1.modify('t_5.font.height = 200')		
		p_1.PictureName = "slideup\ctsr11.bmp"
	//compute	
	case 'c11'
		dw_1.modify('t_6.font.height = 200')		
		p_1.PictureName = "slideup\ctsc11.bmp"
	case 'column11'
		dw_1.modify('street.font.height = 200')		
		p_1.PictureName = "slideup\ctscolumn11.bmp"
end choose


end subroutine

public subroutine wf_footerall (string as_item);dw_1.dataobject = "d_tabular_footer"
dw_1.settransobject(sqlca)
//dw_1.retrieve()
dw_1.modify("b_1.SlideUp = AllAbove")
dw_1.modify("t_1.SlideUp = AllAbove")
dw_1.modify("p_1.SlideUp = AllAbove")
dw_1.modify("r_1.SlideUp = AllAbove")
dw_1.modify("c_1.SlideUp = AllAbove")
dw_1.modify("t_2.SlideUp = AllAbove")
dw_1.modify("t_3.SlideUp = AllAbove")
dw_1.modify("t_4.SlideUp = AllAbove")
dw_1.modify("t_5.SlideUp = AllAbove")
dw_1.modify("t_6.SlideUp = AllAbove")
dw_1.modify("emp_id_t.SlideUp = AllAbove")
dw_1.modify("manager_id_t.SlideUp = AllAbove")
dw_1.modify("emp_fname_t.SlideUp = AllAbove")
dw_1.modify("emp_lanme_t.SlideUp = AllAbove")
dw_1.modify("dept_id_t.SlideUp = AllAbove")
dw_1.modify("street_t.SlideUp = AllAbove")
choose case as_item
	//button
	case 'b1'
		dw_1.modify('emp_id_t.font.height = 200')	
		p_1.PictureName = "slideup\ctfb1.bmp"
	//text	
	case 't1'
		dw_1.modify('manager_id_t.font.height = 200')
		p_1.PictureName = "slideup\ctft1.bmp"
	//picture	
	case 'p1'
		dw_1.modify('emp_fname_t.font.height = 200')		
		p_1.PictureName = "slideup\ctfp1.bmp"
	//round
	case 'r1'
		dw_1.modify('emp_lname_t.font.height = 200')		
		p_1.PictureName = "slideup\ctfr1.bmp"
	//compute	
	case 'c1'
		dw_1.modify('dept_id_t.font.height = 200')		
		p_1.PictureName = "slideup\ctfc1.bmp"
		
	//button
	case 'b11'
		dw_1.modify('t_2.font.height = 200')	
		p_1.PictureName = "slideup\ctfb11.bmp"
	//text	
	case 't11'
		dw_1.modify('t_3.font.height = 200')
		p_1.PictureName = "slideup\ctft11.bmp"
	//picture	
	case 'p11'
		dw_1.modify('t_4.font.height = 200')		
		p_1.PictureName = "slideup\ctfp11.bmp"
	//round
	case 'r11'
		dw_1.modify('t_5.font.height = 200')		
		p_1.PictureName = "slideup\ctfr11.bmp"
	//compute	
	case 'c11'
		dw_1.modify('t_6.font.height = 200')		
		p_1.PictureName = "slideup\ctfc11.bmp"
	case 'column11'
		dw_1.modify('street_t.font.height = 200')		
		p_1.PictureName = "slideup\ctfcolumn11.bmp"
end choose


end subroutine

public subroutine wf_footerdirect (string as_item);dw_1.dataobject = "d_tabular_footer"
dw_1.settransobject(sqlca)
dw_1.retrieve()
dw_1.modify("b_1.SlideUp = DirectlyAbove")
dw_1.modify("t_1.SlideUp = DirectlyAbove")
dw_1.modify("p_1.SlideUp = DirectlyAbove")
dw_1.modify("r_1.SlideUp = DirectlyAbove")
dw_1.modify("c_1.SlideUp = DirectlyAbove")
dw_1.modify("t_2.SlideUp = DirectlyAbove")
dw_1.modify("t_3.SlideUp = DirectlyAbove")
dw_1.modify("t_4.SlideUp = DirectlyAbove")
dw_1.modify("t_5.SlideUp = DirectlyAbove")
dw_1.modify("t_6.SlideUp = DirectlyAbove")
dw_1.modify("emp_id_t.SlideUp = DirectlyAbove")
dw_1.modify("manager_id_t.SlideUp = DirectlyAbove")
dw_1.modify("emp_fname_t.SlideUp = DirectlyAbove")
dw_1.modify("emp_lanme_t.SlideUp = DirectlyAbove")
dw_1.modify("dept_id_t.SlideUp = DirectlyAbove")
dw_1.modify("street_t.SlideUp = DirectlyAbove")

choose case as_item
	//button
	case 'b1'
		dw_1.modify('emp_id_t.font.height = 200')	
		p_1.PictureName = "slideup\cdtfb1.bmp"
	//text	
	case 't1'
		dw_1.modify('manager_id_t.font.height = 200')
		p_1.PictureName = "slideup\cdtft1.bmp"
	//picture	
	case 'p1'
		dw_1.modify('emp_fname_t.font.height = 200')		
		p_1.PictureName = "slideup\cdtfp1.bmp"
	//round
	case 'r1'
		dw_1.modify('emp_lname_t.font.height = 200')		
		p_1.PictureName = "slideup\cdtfr1.bmp"
	//compute	
	case 'c1'
		dw_1.modify('dept_id_t.font.height = 200')		
		p_1.PictureName = "slideup\cdtfc1.bmp"
		
	//button
	case 'b11'
		dw_1.modify('t_2.font.height = 200')	
		p_1.PictureName = "slideup\cdtfb11.bmp"
	//text	
	case 't11'
		dw_1.modify('t_3.font.height = 200')
		p_1.PictureName = "slideup\cdtft11.bmp"
	//picture	
	case 'p11'
		dw_1.modify('t_4.font.height = 200')		
		p_1.PictureName = "slideup\cdtfp11.bmp"
	//round
	case 'r11'
		dw_1.modify('t_5.font.height = 200')		
		p_1.PictureName = "slideup\cdtfr11.bmp"
	//compute	
	case 'c11'
		dw_1.modify('t_6.font.height = 200')		
		p_1.PictureName = "slideup\cdtfc11.bmp"
	case 'column11'
		dw_1.modify('street_t.font.height = 200')		
		p_1.PictureName = "slideup\cdtfcolumn11.bmp"
end choose


end subroutine

public subroutine wf_slideleft (string as_item);//string ls_v
//ls_v = mid(as_item,1,1)
//if ls_v = 'v' then 
//	dw_1.dataobject = "d_tabular_slideup_slideleft_visible"
//else
//	dw_1.dataobject = "d_tabular_slideup_slideleft"
//end if
dw_1.dataobject = "d_tabular_slideleft"
dw_1.settransobject(sqlca)
dw_1.retrieve()

choose case as_item
	//button
	case 'b1'
		dw_1.modify("b_1.slideleft = yes")
		dw_1.modify("lb_1.slideleft = yes")
		p_1.PictureName = "slideup\slb1.bmp"		

	case 'vb1'
		dw_1.modify("b_1.slideleft = yes")
		dw_1.modify("lb_1.slideleft = yes")
		dw_1.modify("emp_id.visible = false")
		p_1.PictureName = "slideup\slb1.bmp"
		
	//text	
	case 't1'
		dw_1.modify("t_1.slideleft = yes")
		dw_1.modify("lt_1.slideleft = yes")
		p_1.PictureName = "slideup\slt1.bmp"
	
	case 'vt1'
		dw_1.modify("t_1.slideleft = yes")
		dw_1.modify("lt_1.slideleft = yes")
		dw_1.modify("emp_id.visible = false")
		dw_1.modify("manager_id.visible = false")
		dw_1.modify("lb_1.visible = false")
		dw_1.modify("b_1.visible = false")
		p_1.PictureName = "slideup\slvt1.bmp"
		
	//picture	
	case 'p1'
		dw_1.modify("p_1.slideleft = yes")
		dw_1.modify("lp_1.slideleft = yes")
		p_1.PictureName = "slideup\slp1.bmp"

	case 'vp1'
		dw_1.modify("p_1.slideleft = yes")
		dw_1.modify("lp_1.slideleft = yes")
		dw_1.modify("emp_id.visible = false")
		dw_1.modify("manager_id.visible = false")
		dw_1.modify("lb_1.visible = false")
		dw_1.modify("b_1.visible = false")
		dw_1.modify("lt_1.visible = false")
		dw_1.modify("t_1.visible = false")		
		p_1.PictureName = "slideup\slvp1.bmp"
		
	//round
	case 'r1'
		dw_1.modify("r_1.slideleft = yes")
		dw_1.modify("lr_1.slideleft = yes")
		p_1.PictureName = "slideup\slr1.bmp"

	case 'vr1'
		dw_1.modify("r_1.slideleft = yes")
		dw_1.modify("lr_1.slideleft = yes")
		dw_1.modify("emp_id.visible = false")
		dw_1.modify("manager_id.visible = false")
		dw_1.modify("lb_1.visible = false")
		dw_1.modify("b_1.visible = false")
		p_1.PictureName = "slideup\slvr1.bmp"
		
	//compute	
	case 'c1'
		dw_1.modify("c_1.slideleft = yes")
		dw_1.modify("lc_1.slideleft = yes")
		p_1.PictureName = "slideup\slc1.bmp"

	case 'vc1'
		dw_1.modify("c_1.slideleft = yes")
		dw_1.modify("lc_1.slideleft = yes")
		dw_1.modify("emp_id.visible = false")
		dw_1.modify("manager_id.visible = false")
		dw_1.modify("lb_1.visible = false")
		dw_1.modify("b_1.visible = false")
		p_1.PictureName = "slideup\slvc1.bmp"
		
	//b1c1 
	case 'b1c1'
		dw_1.modify("b_1.slideleft = yes")
		dw_1.modify("lb_1.slideleft = yes")
		dw_1.modify("c_1.slideleft = yes")
		dw_1.modify("lc_1.slideleft = yes")		
		p_1.PictureName = "slideup\slb1c1.bmp"

	case 'vb1c1'
		dw_1.modify("b_1.slideleft = yes")
		dw_1.modify("lb_1.slideleft = yes")
		dw_1.modify("c_1.slideleft = yes")
		dw_1.modify("lc_1.slideleft = yes")		
		p_1.PictureName = "slideup\slvb1c1.bmp"
		
	//b1t1c1
	case 'b1t1c1'
		dw_1.modify("b_1.slideleft = yes")
		dw_1.modify("lb_1.slideleft = yes")
		dw_1.modify("t_1.slideleft = yes")
		dw_1.modify("lt_1.slideleft = yes")
		dw_1.modify("c_1.slideleft = yes")
		dw_1.modify("lc_1.slideleft = yes")
		p_1.PictureName = "slideup\slb1t1c1.bmp"

	case 'vb1t1c1'
		dw_1.modify("b_1.slideleft = yes")
		dw_1.modify("lb_1.slideleft = yes")
		dw_1.modify("t_1.slideleft = yes")
		dw_1.modify("lt_1.slideleft = yes")
		dw_1.modify("c_1.slideleft = yes")
		dw_1.modify("lc_1.slideleft = yes")
		p_1.PictureName = "slideup\slvb1t1c1.bmp"
		
	case 'column'
		dw_1.modify("emp_fname.slideleft = yes")
		dw_1.modify("lt_1.slideleft = yes")
		p_1.picturename = "slideup\slcolumn.bmp"

	case 'vcolumn'
		dw_1.modify("emp_fname.slideleft = yes")
		dw_1.modify("lt_1.slideleft = yes")
		dw_1.modify("emp_id.visible = false")
		dw_1.modify("manager_id.visible = false")
		dw_1.modify("lb_1.visible = false")
		dw_1.modify("b_1.visible = false")
		p_1.picturename = "slideup\slvcolumn.bmp"
	//all
	
	case 'vsome'
		dw_1.modify("emp_fname.slideleft = yes")
		dw_1.modify("emp_manager.slideleft = yes")
		dw_1.modify("emp_lname.slideleft = yes")
		dw_1.modify("dept_id.slideleft = yes")
		dw_1.modify("b_1.slideleft = yes")
		dw_1.modify("lb_1.slideleft = yes")
		dw_1.modify("t_1.slideleft = yes")
		dw_1.modify("lt_1.slideleft = yes")
		dw_1.modify("p_1.slideleft = yes")
		dw_1.modify("lp_1.slideleft = yes")
		dw_1.modify("r_1.slideleft = yes")
		dw_1.modify("lr_1.slideleft = yes")
		dw_1.modify("c_1.slideleft = yes")
		dw_1.modify("lc_1.slideleft = yes")
		dw_1.modify("lt_1.slideleft = yes")
		dw_1.modify("emp_id.visible = false")
		dw_1.modify("lb_1.visible = false")
		dw_1.modify("manager_id.visible = false")		
		dw_1.modify("b_1.visible = false")
		dw_1.modify("lt_1.visible = false")
		p_1.picturename = "slideup\slvsome.bmp"
	
	case 'all'
		dw_1.modify("emp_fname.slideleft = yes")
		dw_1.modify("emp_manager.slideleft = yes")
		dw_1.modify("emp_lname.slideleft = yes")
		dw_1.modify("dept_id.slideleft = yes")
		dw_1.modify("b_1.slideleft = yes")
		dw_1.modify("lb_1.slideleft = yes")
		dw_1.modify("t_1.slideleft = yes")
		dw_1.modify("lt_1.slideleft = yes")
		dw_1.modify("p_1.slideleft = yes")
		dw_1.modify("lp_1.slideleft = yes")
		dw_1.modify("r_1.slideleft = yes")
		dw_1.modify("lr_1.slideleft = yes")
		dw_1.modify("c_1.slideleft = yes")
		dw_1.modify("lc_1.slideleft = yes")	
		p_1.PictureName = "slideup\slall.bmp"
end choose


end subroutine

public subroutine wf_slideupslideleft (string as_item);dw_1.dataobject = "d_tabular_slideup_slideleft"
dw_1.settransobject(sqlca)
dw_1.retrieve()
dw_1.modify("street.font.height = 200")
dw_1.modify("emp_fname_t.font.height = 200")
dw_1.modify("dept_id_t.font.height = 200")
dw_1.modify("emp_it.visible = false")
dw_1.modify("emp_lname.visible = false")
p_1.PictureName = "slideup\slideupslideleft.bmp"
end subroutine

on w_slideupui.create
this.cb_3=create cb_3
this.cb_2=create cb_2
this.cb_clear=create cb_clear
this.cb_execute=create cb_execute
this.cb_close=create cb_close
this.mle_output=create mle_output
this.lb_items=create lb_items
this.gb_5=create gb_5
this.mle_describe=create mle_describe
this.gb_1=create gb_1
this.gb_2=create gb_2
this.p_1=create p_1
this.gb_4=create gb_4
this.gb_3=create gb_3
this.cb_4=create cb_4
this.sle_1=create sle_1
this.dw_1=create dw_1
this.cb_5=create cb_5
this.Control[]={this.cb_3,&
this.cb_2,&
this.cb_clear,&
this.cb_execute,&
this.cb_close,&
this.mle_output,&
this.lb_items,&
this.gb_5,&
this.mle_describe,&
this.gb_1,&
this.gb_2,&
this.p_1,&
this.gb_4,&
this.gb_3,&
this.cb_4,&
this.sle_1,&
this.dw_1,&
this.cb_5}
end on

on w_slideupui.destroy
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.cb_clear)
destroy(this.cb_execute)
destroy(this.cb_close)
destroy(this.mle_output)
destroy(this.lb_items)
destroy(this.gb_5)
destroy(this.mle_describe)
destroy(this.gb_1)
destroy(this.gb_2)
destroy(this.p_1)
destroy(this.gb_4)
destroy(this.gb_3)
destroy(this.cb_4)
destroy(this.sle_1)
destroy(this.dw_1)
destroy(this.cb_5)
end on

event open;//Add Describe
Wf_Describe()
//Init ListBox to add Test Items
Wf_Init_Items()

wf_Savedw()

dw_1.SetTransObject(SQLCA)
p_1.PictureName = "slideup\default.bmp"
is_itemstring = "original"

mle_output.text = '01 ÔËÐÐÇ°ÇëÏÈcomposite_ui.rarËù°üº¬µÄÍ¼Æ¬ÎÄ¼þ½âÑ¹µ½¸Ã°¸ÀýËùÔÚµÄÄ¿Â¼' +' ~r~n'
mle_output.text += '02 Ë«»÷datawindow¡¢pictureÊ±£¬¿É×î´ó»¯ÏÔÊ¾datawindow¡¢picture' +' ~r~n'
mle_output.text += '03 ´°¿ÚÓÒ±ßµÄpictureÊÇ¶ÔÓ¦datawindowµÄpbÔËÐÐÐ§¹ûÍ¼' +' ~r~n'
end event

event close;Rollback USING SQLCA;
end event

type cb_3 from commandbutton within w_slideupui
boolean visible = false
integer x = 3502
integer y = 2312
integer width = 416
integer height = 88
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "create picture"
end type

event clicked;//int li_item, li_ItemSum
//string ls_item, ls_PicName, ls_name
//ls_name = ""
//li_ItemSum = lb_items.TotalItems()
//FOR li_item = 1 to li_ItemSum
//	ls_item = left(lb_items.text(li_item),10)
//	ls_name += ls_item
//	ls_item = trim(ls_item)
//	ls_PicName = "f:\composite_ui\picture\" + ls_item + ".wmf"
//	wf_createpicture(li_item,false)
//   dw_1.saveas(ls_picName,WMF!,true)
//NEXT
//mle_output.text = ls_name
//

end event

type cb_2 from commandbutton within w_slideupui
integer x = 3986
integer y = 2240
integer width = 279
integer height = 88
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Help"
end type

event clicked;mle_output.text = '01 ÔËÐÐÇ°ÇëÏÈcomposite_ui.rarËù°üº¬µÄÍ¼Æ¬ÎÄ¼þ½âÑ¹µ½¸Ã°¸ÀýËùÔÚµÄÄ¿Â¼' +' ~r~n'
mle_output.text += '02 Ë«»÷datawindow¡¢pictureÊ±£¬¿É×î´ó»¯ÏÔÊ¾datawindow¡¢picture' +' ~r~n'
mle_output.text += '03 ´°¿ÚÓÒ±ßµÄpictureÊÇ¶ÔÓ¦datawindowµÄpbÔËÐÐÐ§¹ûÍ¼' +' ~r~n'
end event

type cb_clear from commandbutton within w_slideupui
integer x = 3323
integer y = 2240
integer width = 279
integer height = 88
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Clear"
end type

event clicked;ii_index = 0
mle_output.text=''
end event

type cb_execute from commandbutton within w_slideupui
integer x = 2999
integer y = 2240
integer width = 279
integer height = 88
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Execute"
end type

event clicked;
IF not lb_items.selectedindex() > 0 THEN
	MessageBox("Warning","Please select a test item")
	return 
END IF

wf_run(lb_items.selectedindex())
//wf_Scriptexe(lb_items.selectedindex(),True)
end event

type cb_close from commandbutton within w_slideupui
integer x = 3648
integer y = 2240
integer width = 279
integer height = 88
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Close"
end type

event clicked;close(parent)
end event

type mle_output from multilineedit within w_slideupui
integer x = 2258
integer y = 1816
integer width = 2080
integer height = 368
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
boolean vscrollbar = true
borderstyle borderstyle = stylelowered!
end type

type lb_items from listbox within w_slideupui
integer x = 59
integer y = 1820
integer width = 2085
integer height = 596
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
boolean hscrollbar = true
boolean vscrollbar = true
boolean sorted = false
borderstyle borderstyle = stylelowered!
end type

event selectionchanged;////View Script
//
//IF index > 0 THEN
//	//wf_Scriptexe(lb_items.selectedindex(),False)
//	ls_itemstring = left(lb_items.text(index),10)	
//	ls_itemstring = trim(ls_itemstring)
//	p_1.setredraw(false)
//	p_1.PictureName = ls_itemstring + ".bmp"
//	p_1.setredraw(true)
//END IF
end event

event doubleclicked;if index > 0 then
	wf_run(index)
end if


//string ls_item
//
//ls_item = left(lb_items.text(index),10)
//ls_item = trim(ls_item)
//
//IF index > 0 THEN
//	//wf_Scriptexe(lb_items.selectedindex(),True)
//	ls_itemstring = left(lb_items.text(index),10)	
//	ls_itemstring = trim(ls_itemstring)
//	p_1.setredraw(false)
//	p_1.PictureName = ls_itemstring + ".bmp"
//	p_1.setredraw(true)
//END IF
end event

type gb_5 from groupbox within w_slideupui
integer x = 2222
integer y = 1756
integer width = 2153
integer height = 460
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "OutPut"
end type

type mle_describe from multilineedit within w_slideupui
boolean visible = false
integer x = 2359
integer y = 68
integer width = 2080
integer height = 684
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
boolean hscrollbar = true
boolean vscrollbar = true
boolean autohscroll = true
boolean autovscroll = true
borderstyle borderstyle = stylelowered!
end type

type gb_1 from groupbox within w_slideupui
boolean visible = false
integer x = 3643
integer y = 112
integer width = 439
integer height = 788
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Description"
end type

type gb_2 from groupbox within w_slideupui
integer x = 27
integer y = 1756
integer width = 2149
integer height = 688
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Test Items"
end type

type p_1 from picture within w_slideupui
integer x = 2258
integer y = 88
integer width = 2080
integer height = 1624
boolean bringtotop = true
boolean originalsize = true
boolean focusrectangle = false
end type

event doubleclicked;ib_IsMax = Not ib_IsMax
if ib_IsMax then
	p_1.x = 0
	p_1.y = 0
	p_1.width = Parent.Width - 40
	p_1.Height = Parent.Height - 108
	p_1.PictureName = is_itemstring + "_big.bmp"
else
	p_1.x = ii_pX
	p_1.y = ii_pY
	p_1.Width = ii_pWidth
	p_1.Height = ii_pHeight
	p_1.PictureName = is_itemstring + ".bmp"
end if
p_1.SetPosition(ToTop!)
end event

type gb_4 from groupbox within w_slideupui
integer x = 2222
integer y = 16
integer width = 2158
integer height = 1728
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "PBÔËÐÐÐ§¹ûÍ¼"
end type

type gb_3 from groupbox within w_slideupui
integer x = 23
integer y = 16
integer width = 2158
integer height = 1728
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "WebÔËÐÐ½á¹û"
end type

type cb_4 from commandbutton within w_slideupui
integer x = 2656
integer y = 2240
integer width = 288
integer height = 88
integer taborder = 20
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "modify"
end type

event clicked;dw_1.setredraw(false)
dw_1.modify(sle_1.text)
dw_1.setredraw(true)
end event

type sle_1 from singlelineedit within w_slideupui
integer x = 2295
integer y = 2344
integer width = 1966
integer height = 96
integer taborder = 30
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type dw_1 from datawindow within w_slideupui
integer x = 55
integer y = 88
integer width = 2094
integer height = 1624
integer taborder = 20
boolean bringtotop = true
string dataobject = "d_tabular_slideup_slideleft"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event doubleclicked;ib_IsMax = Not ib_IsMax
boolean lb_flag
int li_zoom = 60
lb_flag = true

if ib_IsMax then
	dw_1.x = 0
	dw_1.y = 0
	dw_1.width = Parent.Width - 40
	dw_1.Height = Parent.Height - 108
	dw_1.Modify("DataWindow.Zoom=100")
else
	dw_1.x = ii_dwX
	dw_1.y = ii_dwY
	dw_1.Width = ii_dwWidth
	dw_1.Height = ii_dwHeight
end if
dw_1.SetPosition(ToTop!)
end event

type cb_5 from commandbutton within w_slideupui
integer x = 2290
integer y = 2240
integer width = 288
integer height = 88
integer taborder = 20
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "describe"
end type

event clicked;messagebox('',dw_1.describe(sle_1.text))
end event

