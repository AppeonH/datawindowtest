$PBExportHeader$w_saveashtml.srw
forward
global type w_saveashtml from window
end type
type cb_6 from commandbutton within w_saveashtml
end type
type cb_1 from commandbutton within w_saveashtml
end type
type sle_1 from singlelineedit within w_saveashtml
end type
type dw_1 from datawindow within w_saveashtml
end type
type ole_2 from olecustomcontrol within w_saveashtml
end type
type ole_1 from olecustomcontrol within w_saveashtml
end type
type cb_3 from commandbutton within w_saveashtml
end type
type cb_2 from commandbutton within w_saveashtml
end type
type cb_clear from commandbutton within w_saveashtml
end type
type cb_execute from commandbutton within w_saveashtml
end type
type cb_close from commandbutton within w_saveashtml
end type
type mle_output from multilineedit within w_saveashtml
end type
type lb_items from listbox within w_saveashtml
end type
type gb_5 from groupbox within w_saveashtml
end type
type mle_describe from multilineedit within w_saveashtml
end type
type gb_1 from groupbox within w_saveashtml
end type
type gb_2 from groupbox within w_saveashtml
end type
type gb_4 from groupbox within w_saveashtml
end type
type gb_3 from groupbox within w_saveashtml
end type
type cb_4 from commandbutton within w_saveashtml
end type
type cb_5 from commandbutton within w_saveashtml
end type
end forward

global type w_saveashtml from window
integer width = 5239
integer height = 3128
boolean titlebar = true
string title = "W_SaveAsHtml"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
windowstate windowstate = maximized!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
event type string ue_event ( integer ai_arg,  ref string as_arg )
cb_6 cb_6
cb_1 cb_1
sle_1 sle_1
dw_1 dw_1
ole_2 ole_2
ole_1 ole_1
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
gb_4 gb_4
gb_3 gb_3
cb_4 cb_4
cb_5 cb_5
end type
global w_saveashtml w_saveashtml

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
////Date     : 2005-05-13
//////////////////////////////////////////////////////////////////
integer i = 0

lb_items.reset()
i++
lb_items.additem(string(i,'000') + "  htmlgen.browser(net3.x)")

i++
lb_items.additem(string(i,'000') + "  htmlgen.browser(net4.x)")

i++
lb_items.additem(string(i,'000') + "  htmlgen.browser(IE3.0)")

i++
lb_items.additem(string(i,'000') + "  htmlgen.browser(IE4.0)")

i++
lb_items.additem(string(i,'000') + "  htmlgen.browser(IE5.0)")

i++
lb_items.additem(string(i,'000') + "  htmlgen.clientcomputedfields(yes)")

i++
lb_items.additem(string(i,'000') + "  htmlgen.clientcomputedfields(no)")

i++
lb_items.additem(string(i,'000') + "  htmlgen.clientevents(yes)")

i++
lb_items.additem(string(i,'000') + "  htmlgen.clientevents(no)")

i++
lb_items.additem(string(i,'000') + "  htmlgen.clientformatting(yes)")

i++
lb_items.additem(string(i,'000') + "  htmlgen.clientformatting(no)")

i++
lb_items.additem(string(i,'000') + "  htmlgen.clientscriptable(yes)")

i++
lb_items.additem(string(i,'000') + "  htmlgen.clientscriptable(no)")

i++
lb_items.additem(string(i,'000') + "  htmlgen.clientvalidation(yes)")

i++
lb_items.additem(string(i,'000') + "  htmlgen.clientvalidation(no)")

i++
lb_items.additem(string(i,'000') + "  htmlgen.firstonpage(yes)")

i++
lb_items.additem(string(i,'000') + "  htmlgen.firstonpage(no)")

i++
lb_items.additem(string(i,'000') + "  htmlgen.generatejavascript(yes)")

i++
lb_items.additem(string(i,'000') + "  htmlgen.generatejavascript(no)")

i++
lb_items.additem(string(i,'000') + "  htmlgen.htmlversion(3.2)")

i++
lb_items.additem(string(i,'000') + "  htmlgen.htmlversion(4.0)")

i++
lb_items.additem(string(i,'000') + "  htmlgen.objectname(grid)")

i++
lb_items.additem(string(i,'000') + "  htmlgen.objectname(label)")

i++
lb_items.additem(string(i,'000') + "  htmlgen.pagesize(2)")

//i++
//lb_items.additem(string(i,'000') + "  htmlgen.pagesize")

//i++
//lb_items.additem(string(i,'000') + "  htmlgen.selflink")
//
//i++
//lb_items.additem(string(i,'000') + "  htmlgen.selflinkargs")
//
//i++
//lb_items.additem(string(i,'000') + "  htmlgen.encodeselflinkargs")
//
//i++
//lb_items.additem(string(i,'000') + "  htmlgen.netscapelayers")

i++
lb_items.additem(string(i,'000') + "  htmlgen.tabindexbase")

i++
lb_items.additem(string(i,'000') + "  htmltable.border")

i++
lb_items.additem(string(i,'000') + "  htmltable.cellpadding")

i++
lb_items.additem(string(i,'000') + "  htmltable.cellspacing")

i++
lb_items.additem(string(i,'000') + "  htmltable.generatecss(yes)")

i++
lb_items.additem(string(i,'000') + "  htmltable.generatecss(no)")

i++
lb_items.additem(string(i,'000') + "  htmltable.nowrap(yes)")

i++
lb_items.additem(string(i,'000') + "  htmltable.nowrap(no)")

//i++
//lb_items.additem(string(i,'000') + "  htmltable.stylesheet")

i++
lb_items.additem(string(i,'000') + "  htmltable.width")

//dw_1.Object.empid.HTML.Link = "empform.html"
//
//dw_1.Object.empid.HTML.LinkArgs = "EMPID = 'empid'"
//
//dw_1.Object.empid.HTML.LinkTarget = "detail_win"
//
//dw_1.Object.empid.HTML.ValueIsHTML = "true"

i++
lb_items.additem(string(i,'000') + "  column.html.link")
i++
lb_items.additem(string(i,'000') + "  column.html.linkargs")
i++
lb_items.additem(string(i,'000') + "  column.html.linktarget")
i++
lb_items.additem(string(i,'000') + "  column.html.valueishtml")


i++
lb_items.additem(string(i,'000') + "  picture.html.link")
i++
lb_items.additem(string(i,'000') + "  picture.html.linkargs")
i++
lb_items.additem(string(i,'000') + "  picture.html.linktarget")
i++
lb_items.additem(string(i,'000') + "  picture.html.valueishtml")

i++
lb_items.additem(string(i,'000') + "  compute.html.link")
i++
lb_items.additem(string(i,'000') + "  compute.html.linkargs")
i++
lb_items.additem(string(i,'000') + "  compute.html.linktarget")
i++
lb_items.additem(string(i,'000') + "  compute.html.valueishtml")

i++
lb_items.additem(string(i,'000') + "  grid datawindow")
i++
lb_items.additem(string(i,'000') + "  freefrom datawindow")
i++
lb_items.additem(string(i,'000') + "  tabular datawindow")
i++
lb_items.additem(string(i,'000') + "  label datawindow")
i++
lb_items.additem(string(i,'000') + "  graph datawindow")
i++
lb_items.additem(string(i,'000') + "  composite datawindow")
i++
lb_items.additem(string(i,'000') + "  print preview true")

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

//ii_dwX  = dw_1.x
//ii_dwY = dw_1.y
//ii_dwWidth  = dw_1.Width
//ii_dwHeight = dw_1.Height
//
//ii_pX  = p_1.x
//ii_pY = p_1.y
//ii_pWidth  = p_1.Width
//ii_pHeight = p_1.Height

end subroutine

public subroutine wf_scriptexe (string as_item, boolean ab_execute);////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////



end subroutine

public subroutine wf_run (integer ai_item);string ls_item, ls_testitem
int li_pos
ls_item = lb_items.text(ai_item)
ls_item = trim(ls_item)
li_pos = pos(ls_item,' ')
ls_item = mid(ls_item,li_pos)
ls_item = trim(ls_item)

dw_1.dataobject = "d_freeform_saveas1"
dw_1.SetTransObject(sqlca)
dw_1.retrieve()
CreateDirectory("D:\SaveAsHTML")
choose case ls_item
	case 'htmlgen.browser(net3.x)'
		dw_1.modify("DataWindow.HTMLGen.browser = 'Mozilla/3.x () : Netscape 3.x'")
		dw_1.saveas('D:\SaveAsHTML\browser_net3.x_web.html',HTMLTable!,false)
		ole_1.object.navigate("D:\SaveAsHTML\browser_net3.x_web.html")
		ole_2.object.navigate("D:\SaveAsHTML\browser_net3.x_pb.html")
		
	case 'htmlgen.browser(net4.x)'
		dw_1.modify("DataWindow.HTMLGen.browser = 'Mozilla/4.x (): Netscape 4.x'")
		dw_1.saveas('D:\SaveAsHTML\browser_net4.x_web.html',HTMLTable!,false)
		ole_1.object.navigate("D:\SaveAsHTML\browser_net4.x_web.html")
		ole_2.object.navigate("D:\SaveAsHTML\browser_net4.x_pb.html")
		
	case 'htmlgen.browser(IE3.0)'
		dw_1.modify("DataWindow.HTMLGen.browser = 'Mozilla/2.0 (compatible; MSIE 3.x;) : Microsoft Internet Explorer 3.0'")
		dw_1.saveas('D:\SaveAsHTML\browser_IE3.0_web.html',HTMLTable!,false)
		ole_1.object.navigate("D:\SaveAsHTML\browser_IE3.0_web.html")
		ole_2.object.navigate("D:\SaveAsHTML\browser_IE3.0_pb.html")
		
	case 'htmlgen.browser(IE4.0)'
		dw_1.modify("DataWindow.HTMLGen.browser = 'Mozilla/4.0 (compatible; MSIE 4.x;) : Microsoft Internet Explorer 4.0'")
		dw_1.saveas('D:\SaveAsHTML\browser_IE4.0_web.html',HTMLTable!,false)
		ole_1.object.navigate("D:\SaveAsHTML\browser_IE4.0_web.html")
		ole_2.object.navigate("D:\SaveAsHTML\browser_IE4.0_pb.html")
		
	case 'htmlgen.browser(IE5.0)'
		dw_1.modify("DataWindow.HTMLGen.browser = 'Mozilla/4.0 (compatible; MSIE 5.x;) : Microsoft Internet Explorer 5.0'")
		dw_1.saveas('D:\SaveAsHTML\browser_IE5.0_web.html',HTMLTable!,false)
		ole_1.object.navigate("D:\SaveAsHTML\browser_IE5.0_web.html")
		ole_2.object.navigate("D:\SaveAsHTML\browser_IE5.0_pb.html")
		
	case 'htmlgen.clientcomputedfields(yes)'		
		dw_1.modify("DataWindow.HTMLGen.clientComputedFields = 'yes'")
		dw_1.saveas('D:\SaveAsHTML\clientcomputedfields_yes_web.html',HTMLTable!,false)
		ole_1.object.navigate("D:\SaveAsHTML\clientcomputedfields_yes_web.html")
		ole_2.object.navigate("D:\SaveAsHTML\clientcomputedfields_yes_pb.html")
		
	case 'htmlgen.clientcomputedfields(no)'
		dw_1.modify("DataWindow.HTMLGen.clientComputedFields = 'no'")
		dw_1.saveas('D:\SaveAsHTML\clientcomputedfields_no_web.html',HTMLTable!,false)
		ole_1.object.navigate("D:\SaveAsHTML\clientcomputedfields_no_web.html")
		ole_2.object.navigate("D:\SaveAsHTML\clientcomputedfields_no_pb.html")

	case 'htmlgen.clientevents(yes)'
		dw_1.modify("DataWindow.HTMLGen.clientevents = 'yes'")
		dw_1.saveas('D:\SaveAsHTML\clientevent_yes_web.html',HTMLTable!,false)
		ole_1.object.navigate("D:\SaveAsHTML\clientevent_yes_web.html")
		ole_2.object.navigate("D:\SaveAsHTML\clientevent_yes_pb.html")
		
	case 'htmlgen.clientevents(no)'
		dw_1.modify("DataWindow.HTMLGen.clientevents = 'no'")
		dw_1.saveas('D:\SaveAsHTML\clientevent_no_web.html',HTMLTable!,false)
		ole_1.object.navigate("D:\SaveAsHTML\clientevent_no_web.html")
		ole_2.object.navigate("D:\SaveAsHTML\clientevent_no_pb.html")
		
	case 'htmlgen.clientformatting(yes)'
		dw_1.modify("DataWindow.HTMLGen.clientformatting = 'yes'")
		dw_1.saveas('D:\SaveAsHTML\clientformatting_yes_web.html',HTMLTable!,false)
		ole_1.object.navigate("D:\SaveAsHTML\clientformatting_yes_web.html")
		ole_2.object.navigate("D:\SaveAsHTML\clientformatting_yes_pb.html")
		
	case 'htmlgen.clientformatting(no)'
		dw_1.modify("DataWindow.HTMLGen.clientformatting = 'no'")
		dw_1.saveas('D:\SaveAsHTML\clientformatting_no_web.html',HTMLTable!,false)
		ole_1.object.navigate("D:\SaveAsHTML\clientformatting_no_web.html")
		ole_2.object.navigate("D:\SaveAsHTML\clientformatting_no_pb.html")
		
	case 'htmlgen.clientscriptable(yes)'
		dw_1.modify("DataWindow.HTMLGen.clientscriptable = 'yes'")
		dw_1.saveas('D:\SaveAsHTML\clientscriptable_yes_web.html',HTMLTable!,false)
		ole_1.object.navigate("D:\SaveAsHTML\clientscriptable_yes_web.html")
		ole_2.object.navigate("D:\SaveAsHTML\clientscriptable_yes_pb.html")
		
	case 'htmlgen.clientscriptable(no)'
		dw_1.modify("DataWindow.HTMLGen.clientscriptable = 'no'")
		dw_1.saveas('D:\SaveAsHTML\clientscriptable_no_web.html',HTMLTable!,false)
		ole_1.object.navigate("D:\SaveAsHTML\clientscriptable_no_web.html")
		ole_2.object.navigate("D:\SaveAsHTML\clientscriptable_no_pb.html")
		
	case 'htmlgen.clientvalidation(yes)'
		dw_1.modify("DataWindow.HTMLGen.clientvalidation = 'no'")
		dw_1.saveas('D:\SaveAsHTML\clientvalidation_yes_web.html',HTMLTable!,false)
		ole_1.object.navigate("D:\SaveAsHTML\clientvalidation_yes_web.html")
		ole_2.object.navigate("D:\SaveAsHTML\clientvalidation_yes_pb.html")
		
	case 'htmlgen.clientvalidation(no)'
		dw_1.modify("DataWindow.HTMLGen.clientvalidation = 'no'")
		dw_1.saveas('D:\SaveAsHTML\clientvalidation_no_web.html',HTMLTable!,false)
		ole_1.object.navigate("D:\SaveAsHTML\clientvalidation_no_web.html")
		ole_2.object.navigate("D:\SaveAsHTML\clientvalidation_no_pb.html")
		
	case 'htmlgen.firstonpage(yes)'
		dw_1.modify("DataWindow.HTMLGen.firstonpage = 'yes'")
		dw_1.saveas('D:\SaveAsHTML\firstonpage_yes_web.html',HTMLTable!,false)
		ole_1.object.navigate("D:\SaveAsHTML\firstonpage_yes_web.html")
		ole_2.object.navigate("D:\SaveAsHTML\firstonpage_yes_pb.html")
		
	case 'htmlgen.firstonpage(no)'
		dw_1.modify("DataWindow.HTMLGen.firstonpage = 'no'")
		dw_1.saveas('D:\SaveAsHTML\firstonpage_no_web.html',HTMLTable!,false)
		ole_1.object.navigate("D:\SaveAsHTML\firstonpage_no_web.html")
		ole_2.object.navigate("D:\SaveAsHTML\firstonpage_no_pb.html")
		
	case 'htmlgen.generatejavascript(yes)'
		dw_1.modify("DataWindow.HTMLGen.generatejavascript = 'yes'")
		dw_1.saveas('D:\SaveAsHTML\generatejavascript_yes_web.html',HTMLTable!,false)
		ole_1.object.navigate("D:\SaveAsHTML\generatejavascript_yes_web.html")
		ole_2.object.navigate("D:\SaveAsHTML\generatejavascript_yes_pb.html")
		
	case 'htmlgen.generatejavascript(no)'
		dw_1.modify("DataWindow.HTMLGen.generatejavascript = 'no'")
		dw_1.saveas('D:\SaveAsHTML\generatejavascript_no_web.html',HTMLTable!,false)
		ole_1.object.navigate("D:\SaveAsHTML\generatejavascript_no_web.html")
		ole_2.object.navigate("D:\SaveAsHTML\generatejavascript_no_pb.html")
		
	case 'htmlgen.htmlversion(3.2)'
		dw_1.modify("DataWindow.HTMLGen.generatejavascript = '3.2'")
		dw_1.saveas('D:\SaveAsHTML\htmlversion_3.2_web.html',HTMLTable!,false)
		ole_1.object.navigate("D:\SaveAsHTML\htmlversion_3.2_web.html")
		ole_2.object.navigate("D:\SaveAsHTML\htmlversion_3.2_pb.html")
		
	case 'htmlgen.htmlversion(4.0)'
		dw_1.modify("DataWindow.HTMLGen.generatejavascript = '4.0'")
		dw_1.saveas('D:\SaveAsHTML\htmlversion_4.0_web.html',HTMLTable!,false)
		ole_1.object.navigate("D:\SaveAsHTML\htmlversion_4.0_web.html")
		ole_2.object.navigate("D:\SaveAsHTML\htmlversion_4.0_pb.html")
		
	case 'htmlgen.objectname(grid)'
		dw_1.modify("DataWindow.HTMLGen.objectname = 'd_grid'")
		dw_1.saveas('D:\SaveAsHTML\objectname_grid_web.html',HTMLTable!,false)
		ole_1.object.navigate("D:\SaveAsHTML\objectname_grid_web.html")
		ole_2.object.navigate("D:\SaveAsHTML\objectname_grid_pb.html")
		
	case 'htmlgen.objectname(label)'
		dw_1.modify("DataWindow.HTMLGen.objectname = 'd_label'")
		dw_1.saveas('D:\SaveAsHTML\objectname_label_web.html',HTMLTable!,false)
		ole_1.object.navigate("D:\SaveAsHTML\objectname_label_web.html")
		ole_2.object.navigate("D:\SaveAsHTML\objectname_label_pb.html")
		
	case 'htmlgen.pagesize(2)'
		dw_1.modify("DataWindow.HTMLGen.pagesize = '2'")
		dw_1.modify("DataWindow.HTMLDW = 'yes'")
		dw_1.saveas('D:\SaveAsHTML\pagesize_2_web.html',HTMLTable!,false)
		ole_1.object.navigate("D:\SaveAsHTML\pagesize_2_web.html")
		ole_2.object.navigate("D:\SaveAsHTML\pagesize_2_pb.html")
		
	//case 'htmlgen.selflink'		
	//case 'htmlgen.selflinkargs'		
	//case //htmlgen.encodeselflinkargs	
	//case 'htmlgen.netscapelayers'
	//case 'htmltable.stylesheet'
	case 'htmlgen.tabindexbase'
		dw_1.modify("DataWindow.htmlgen.tabindexbase = 30")
		dw_1.saveas('D:\SaveAsHTML\tabindexbase_web.html',HTMLTable!,false)
		ole_1.object.navigate("D:\SaveAsHTML\tabindexbase_web.html")
		ole_2.object.navigate("D:\SaveAsHTML\tabindexbase_pb.html")
		
	case 'htmltable.border'
		dw_1.modify("DataWindow.htmltable.border = '30'")
		dw_1.saveas('D:\SaveAsHTML\border_web.html',HTMLTable!,false)
		ole_1.object.navigate("D:\SaveAsHTML\border_web.html")
		ole_2.object.navigate("D:\SaveAsHTML\border_pb.html")
		
	case 'htmltable.cellpadding'
		dw_1.modify("DataWindow.htmltable.cellpadding = '30'")
		dw_1.saveas('D:\SaveAsHTML\cellpadding_web.html',HTMLTable!,false)
		ole_1.object.navigate("D:\SaveAsHTML\cellpadding_web.html")
		ole_2.object.navigate("D:\SaveAsHTML\cellpadding_pb.html")
		
	case 'htmltable.cellspacing'
		dw_1.modify("DataWindow.htmltable.cellspacing = '30'")
		dw_1.saveas('D:\SaveAsHTML\cellspacing_web.html',HTMLTable!,false)
		ole_1.object.navigate("D:\SaveAsHTML\cellspacing_web.html")
		ole_2.object.navigate("D:\SaveAsHTML\cellpadding_pb.html")
		
	case 'htmltable.generatecss(yes)'
		dw_1.modify("DataWindow.htmltable.generatecss = 'yes'")
		dw_1.saveas('D:\SaveAsHTML\generatecss_yes_web.html',HTMLTable!,false)
		ole_1.object.navigate("D:\SaveAsHTML\generatecss_yes_web.html")
		ole_2.object.navigate("D:\SaveAsHTML\generatecss_yes_pb.html")
		
	case 'htmltable.generatecss(no)'
		dw_1.modify("DataWindow.htmltable.generatecss = 'no'")
		dw_1.saveas('D:\SaveAsHTML\generatecss_no_web.html',HTMLTable!,false)
		ole_1.object.navigate("D:\SaveAsHTML\generatecss_no_web.html")
		ole_2.object.navigate("D:\SaveAsHTML\generatecss_no_pb.html")
		
	case 'htmltable.nowrap(yes)'
		dw_1.modify("DataWindow.htmltable.nowrap = 'yes'")
		dw_1.saveas('D:\SaveAsHTML\nowrap_yes_web.html',HTMLTable!,false)
		ole_1.object.navigate("D:\SaveAsHTML\nowrap_yes_web.html")
		ole_2.object.navigate("D:\SaveAsHTML\nowrap_yes_pb.html")
		
	case 'htmltable.nowrap(no)'
		dw_1.modify("DataWindow.htmltable.nowrap = 'no'")
		dw_1.saveas('D:\SaveAsHTML\nowrap_no_web.html',HTMLTable!,false)
		ole_1.object.navigate("D:\SaveAsHTML\nowrap_no_web.html")
		ole_2.object.navigate("D:\SaveAsHTML\nowrap_no_pb.html")
	
	
	case 'htmltable.width'
		dw_1.modify("DataWindow.htmltable.width = '3000'")
		dw_1.saveas('D:\SaveAsHTML\width_web.html',HTMLTable!,false)
		ole_1.object.navigate("D:\SaveAsHTML\width_web.html")
		ole_2.object.navigate("D:\SaveAsHTML\width_pb.html")
		
	case 'column.html.link'
		dw_1.dataobject = 'd_freeform_saveas1'
		dw_1.settransobject(sqlca)
		dw_1.retrieve()
		dw_1.modify("emp_id.html.link = 'D:\SaveAsHTML\a.html'")
		dw_1.saveas('D:\SaveAsHTML\column_html_link_web.html',HTMLTable!,false)
		ole_1.object.navigate('D:\SaveAsHTML\column_html_link_web.html')
		ole_2.object.navigate('D:\SaveAsHTML\column_html_link_pb.html')
		
	case 'column.html.linkargs'
		dw_1.dataobject = 'd_freeform_saveas1'
		dw_1.settransobject(sqlca)
		dw_1.retrieve()
		dw_1.modify("emp_id.html.linkargs = 'EMPID = ~"emp_id~"'")
		dw_1.saveas('D:\SaveAsHTML\column_html_linkargs_web.html',HTMLTable!,false)
		ole_1.object.navigate('D:\SaveAsHTML\column_html_linkargs_web.html')
		ole_2.object.navigate('D:\SaveAsHTML\column_html_linkargs_pb.html')
		
	case 'column.html.linktarget'
		dw_1.dataobject = 'd_freeform_saveas1'
		dw_1.settransobject(sqlca)
		dw_1.retrieve()
		dw_1.modify("emp_id.html.linktarget = ''")
		dw_1.saveas('D:\SaveAsHTML\column_html_linktarget_web.html',HTMLTable!,false)
		ole_1.object.navigate('D:\SaveAsHTML\column_html_linktarget_web.html')
		ole_2.object.navigate('D:\SaveAsHTML\column_html_linktarget_pb.html')
		
	case 'column.html.valueishtml'
		dw_1.dataobject = 'd_freeform_saveas1'
		dw_1.settransobject(sqlca)
		dw_1.retrieve()
		dw_1.modify("emp_id.html.valueishtml = 'false'")
		dw_1.saveas('D:\SaveAsHTML\column_html_valueishtml_web.html',HTMLTable!,false)
		ole_1.object.navigate('D:\SaveAsHTML\column_html_valueishtml_web.html')
		ole_2.object.navigate('D:\SaveAsHTML\column_html_valueishtml_pb.html')
//
	case 'picture.html.link'
		dw_1.dataobject = 'd_freeform_saveas1'
		dw_1.settransobject(sqlca)
		dw_1.retrieve()
		dw_1.modify("p_1.html.link = 'D:\SaveAsHTML\a.html'")
		dw_1.saveas('D:\SaveAsHTML\picture_html_link_web.html',HTMLTable!,false)
		ole_1.object.navigate('D:\SaveAsHTML\picture_html_link_web.html')
		ole_2.object.navigate('D:\SaveAsHTML\picture_html_link_pb.html')
		
	case 'picture.html.linkargs'
		dw_1.dataobject = 'd_freeform_saveas1'
		dw_1.settransobject(sqlca)
		dw_1.retrieve()
		dw_1.modify("p_1.html.linkargs = 'EMPID = ~"emp_id~"'")
		dw_1.saveas('D:\SaveAsHTML\picture_html_linkargs_web.html',HTMLTable!,false)
		ole_1.object.navigate('D:\SaveAsHTML\picture_html_linkargs_web.html')
		ole_2.object.navigate('D:\SaveAsHTML\picture_html_linkargs_pb.html')
		
	case 'picture.html.linktarget'
		dw_1.dataobject = 'd_freeform_saveas1'
		dw_1.settransobject(sqlca)
		dw_1.retrieve()
		dw_1.modify("p_1.html.linktarget = ''")
		dw_1.saveas('D:\SaveAsHTML\picture_html_linktarget_web.html',HTMLTable!,false)
		ole_1.object.navigate('D:\SaveAsHTML\picture_html_linktarget_web.html')
		ole_2.object.navigate('D:\SaveAsHTML\picture_html_linktarget_pb.html')
		
	case 'picture.html.valueishtml'
		dw_1.dataobject = 'd_freeform_saveas1'
		dw_1.settransobject(sqlca)
		dw_1.retrieve()
		dw_1.modify("p_1.html.valueishtml = 'false'")
		dw_1.saveas('D:\SaveAsHTML\picture_html_valueishtml_web.html',HTMLTable!,false)
		ole_1.object.navigate('D:\SaveAsHTML\picture_html_valueishtml_web.html')
		ole_2.object.navigate('D:\SaveAsHTML\picture_html_valueishtml_pb.html')
		
	case 'compute.html.link'
		dw_1.dataobject = 'd_freeform_saveas1'
		dw_1.settransobject(sqlca)
		dw_1.retrieve()
		dw_1.modify("compute_1.html.link = 'D:\SaveAsHTML\a.html'")
		dw_1.saveas('D:\SaveAsHTML\compute_html_link_web.html',HTMLTable!,false)
		ole_1.object.navigate('D:\SaveAsHTML\compute_html_link_web.html')
		ole_2.object.navigate('D:\SaveAsHTML\compute_html_link_pb.html')
		
	case 'compute.html.linkargs'
		dw_1.dataobject = 'd_freeform_saveas1'
		dw_1.settransobject(sqlca)
		dw_1.retrieve()
		dw_1.modify("compute_1.html.linkargs = 'EMPID = ~"emp_id~"'")
		dw_1.saveas('D:\SaveAsHTML\compute_html_linkargs_web.html',HTMLTable!,false)
		ole_1.object.navigate('D:\SaveAsHTML\compute_html_linkargs_web.html')
		ole_2.object.navigate('D:\SaveAsHTML\compute_html_linkargs_pb.html')
		
	case 'compute.html.linktarget'
		dw_1.dataobject = 'd_freeform_saveas1'
		dw_1.settransobject(sqlca)
		dw_1.retrieve()
		dw_1.modify("compute_1.html.linktarget = ''")
		dw_1.saveas('D:\SaveAsHTML\compute_html_linktarget_web.html',HTMLTable!,false)
		ole_1.object.navigate('D:\SaveAsHTML\compute_html_linktarget_web.html')
		ole_2.object.navigate('D:\SaveAsHTML\compute_html_linktarget_pb.html')
		
	case 'compute.html.valueishtml'
		dw_1.dataobject = 'd_freeform_saveas1'
		dw_1.settransobject(sqlca)
		dw_1.retrieve()
		dw_1.modify("compute_1.html.valueishtml = 'false'")
		dw_1.saveas('D:\SaveAsHTML\compute_html_valueishtml_web.html',HTMLTable!,false)
		ole_1.object.navigate('D:\SaveAsHTML\compute_html_valueishtml_web.html')
		ole_2.object.navigate('D:\SaveAsHTML\compute_html_valueishtml_pb.html')
		
	case 'grid datawindow'
		dw_1.dataobject = 'd_grid_saveas'
		dw_1.settransobject(sqlca)
		dw_1.retrieve()
		dw_1.saveas('D:\SaveAsHTML\grid_web.html',HTMLTable!,true)
		ole_1.object.navigate('D:\SaveAsHTML\grid_web.html')
		ole_2.object.navigate('D:\SaveAsHTML\grid_pb.html')
	case 'freefrom datawindow'
		dw_1.dataobject = 'd_freeform_saveas'
		dw_1.settransobject(sqlca)
		dw_1.retrieve()
		dw_1.saveas('D:\SaveAsHTML\freefrom_web.html',HTMLTable!,true)
		ole_1.object.navigate('D:\SaveAsHTML\freefrom_web.html')
		ole_2.object.navigate('D:\SaveAsHTML\freefrom_pb.html')
	case 'tabular datawindow'
		dw_1.dataobject = 'd_tabular_saveas'
		dw_1.settransobject(sqlca)
		dw_1.retrieve()
		dw_1.saveas('D:\SaveAsHTML\tabular_web.html',HTMLTable!,true)
		ole_1.object.navigate('D:\SaveAsHTML\tabular_web.html')
		ole_2.object.navigate('D:\SaveAsHTML\tabular_pb.html')
	case 'label datawindow'
		dw_1.dataobject = 'd_label_saveas'
		dw_1.settransobject(sqlca)
		dw_1.retrieve()
		dw_1.saveas('D:\SaveAsHTML\label_web.html',HTMLTable!,true)
		ole_1.object.navigate('D:\SaveAsHTML\label_web.html')
		ole_2.object.navigate('D:\SaveAsHTML\label_pb.html')
	case 'graph datawindow'
		dw_1.dataobject = 'd_graph_saveas'
		dw_1.settransobject(sqlca)
		dw_1.retrieve()
		dw_1.saveas('D:\SaveAsHTML\graph_web.html',HTMLTable!,true)
		ole_1.object.navigate('D:\SaveAsHTML\graph_web.html')
		ole_2.object.navigate('D:\SaveAsHTML\graph_pb.html')
	case 'composite datawindow'
		dw_1.dataobject = 'd_composite_saveas'
		dw_1.settransobject(sqlca)
		dw_1.retrieve()
		dw_1.saveas('D:\SaveAsHTML\composite_web.html',HTMLTable!,true)
		ole_1.object.navigate('D:\SaveAsHTML\composite_web.html')
		ole_2.object.navigate('D:\SaveAsHTML\composite_pb.html')
	case 'print preview true'
		dw_1.dataobject = 'd_grid_saveas'
		dw_1.settransobject(sqlca)
		dw_1.retrieve()
		dw_1.modify("datawindow.print.preview = true")
		dw_1.saveas('D:\SaveAsHTML\print_preview_web.html',HTMLTable!,true)
		ole_1.object.navigate('D:\SaveAsHTML\print_preview_web.html')
		ole_2.object.navigate('D:\SaveAsHTML\print_preview_pb.html')
	case else
		messagebox('error','no test point')
end choose
end subroutine

on w_saveashtml.create
this.cb_6=create cb_6
this.cb_1=create cb_1
this.sle_1=create sle_1
this.dw_1=create dw_1
this.ole_2=create ole_2
this.ole_1=create ole_1
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
this.gb_4=create gb_4
this.gb_3=create gb_3
this.cb_4=create cb_4
this.cb_5=create cb_5
this.Control[]={this.cb_6,&
this.cb_1,&
this.sle_1,&
this.dw_1,&
this.ole_2,&
this.ole_1,&
this.cb_3,&
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
this.gb_4,&
this.gb_3,&
this.cb_4,&
this.cb_5}
end on

on w_saveashtml.destroy
destroy(this.cb_6)
destroy(this.cb_1)
destroy(this.sle_1)
destroy(this.dw_1)
destroy(this.ole_2)
destroy(this.ole_1)
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
destroy(this.gb_4)
destroy(this.gb_3)
destroy(this.cb_4)
destroy(this.cb_5)
end on

event open;//Add Describe
Wf_Describe()
//Init ListBox to add Test Items
Wf_Init_Items()

wf_Savedw()

is_itemstring = "original"

mle_output.text = '01 ÔËÐÐÇ°ÇëÏÈSaveAsHTML.rarËù°üº¬µÄÍ¼Æ¬ÎÄ¼þ½âÑ¹µ½D:\SaveAsHTMLÄ¿Â¼' +' ~r~n'
//mle_output.text += '02 Ë«»÷datawindow¡¢pictureÊ±£¬¿É×î´ó»¯ÏÔÊ¾datawindow¡¢picture' +' ~r~n'
mle_output.text += '02 ´°¿Ú×ó±ßÊÇWebÔËÐÐ½á¹û£¬ÓÒ±ßÊÇPbÔËÐÐ½á¹û' +' ~r~n'
end event

event close;Rollback USING SQLCA;
end event

type cb_6 from commandbutton within w_saveashtml
boolean visible = false
integer x = 206
integer y = 2560
integer width = 402
integer height = 112
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "saveasascii"
end type

event clicked;ole_1.object.navigate("D:\task\ATL\AutoTest\integrationcase\html\grid.xls")
end event

type cb_1 from commandbutton within w_saveashtml
boolean visible = false
integer x = 192
integer y = 2448
integer width = 402
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "saveas"
end type

event clicked;dw_1.dataobject = "d_freeform_saveas1"
dw_1.settransobject(sqlca)
dw_1.retrieve()
dw_1.saveas('c:\a.html',HTMLTable!,true)
ole_1.object.navigate("c:\a.html")
end event

type sle_1 from singlelineedit within w_saveashtml
integer x = 2258
integer y = 2376
integer width = 1339
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 134217742
borderstyle borderstyle = stylelowered!
end type

type dw_1 from datawindow within w_saveashtml
boolean visible = false
integer x = 1070
integer y = 2396
integer width = 686
integer height = 400
integer taborder = 30
string title = "none"
string dataobject = "d_grid_argument"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type ole_2 from olecustomcontrol within w_saveashtml
event statustextchange ( string text )
event progresschange ( long progress,  long progressmax )
event commandstatechange ( long command,  boolean enable )
event downloadbegin ( )
event downloadcomplete ( )
event titlechange ( string text )
event propertychange ( string szproperty )
event beforenavigate2 ( oleobject pdisp,  any url,  any flags,  any targetframename,  any postdata,  any headers,  ref boolean cancel )
event newwindow2 ( ref oleobject ppdisp,  ref boolean cancel )
event navigatecomplete2 ( oleobject pdisp,  any url )
event documentcomplete ( oleobject pdisp,  any url )
event onquit ( )
event onvisible ( boolean ocx_visible )
event ontoolbar ( boolean toolbar )
event onmenubar ( boolean menubar )
event onstatusbar ( boolean statusbar )
event onfullscreen ( boolean fullscreen )
event ontheatermode ( boolean theatermode )
event windowsetresizable ( boolean resizable )
event windowsetleft ( long left )
event windowsettop ( long top )
event windowsetwidth ( long ocx_width )
event windowsetheight ( long ocx_height )
event windowclosing ( boolean ischildwindow,  ref boolean cancel )
event clienttohostwindow ( ref long cx,  ref long cy )
event setsecurelockicon ( long securelockicon )
event filedownload ( ref boolean cancel )
event navigateerror ( oleobject pdisp,  any url,  any frame,  any statuscode,  ref boolean cancel )
event printtemplateinstantiation ( oleobject pdisp )
event printtemplateteardown ( oleobject pdisp )
event updatepagestatus ( oleobject pdisp,  any npage,  any fdone )
event privacyimpactedstatechange ( boolean bimpacted )
integer x = 2254
integer y = 80
integer width = 2094
integer height = 1632
integer taborder = 30
borderstyle borderstyle = stylelowered!
boolean focusrectangle = false
string binarykey = "w_saveashtml.win"
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
end type

type ole_1 from olecustomcontrol within w_saveashtml
event statustextchange ( string text )
event progresschange ( long progress,  long progressmax )
event commandstatechange ( long command,  boolean enable )
event downloadbegin ( )
event downloadcomplete ( )
event titlechange ( string text )
event propertychange ( string szproperty )
event beforenavigate2 ( oleobject pdisp,  any url,  any flags,  any targetframename,  any postdata,  any headers,  ref boolean cancel )
event newwindow2 ( ref oleobject ppdisp,  ref boolean cancel )
event navigatecomplete2 ( oleobject pdisp,  any url )
event documentcomplete ( oleobject pdisp,  any url )
event onquit ( )
event onvisible ( boolean ocx_visible )
event ontoolbar ( boolean toolbar )
event onmenubar ( boolean menubar )
event onstatusbar ( boolean statusbar )
event onfullscreen ( boolean fullscreen )
event ontheatermode ( boolean theatermode )
event windowsetresizable ( boolean resizable )
event windowsetleft ( long left )
event windowsettop ( long top )
event windowsetwidth ( long ocx_width )
event windowsetheight ( long ocx_height )
event windowclosing ( boolean ischildwindow,  ref boolean cancel )
event clienttohostwindow ( ref long cx,  ref long cy )
event setsecurelockicon ( long securelockicon )
event filedownload ( ref boolean cancel )
event navigateerror ( oleobject pdisp,  any url,  any frame,  any statuscode,  ref boolean cancel )
event printtemplateinstantiation ( oleobject pdisp )
event printtemplateteardown ( oleobject pdisp )
event updatepagestatus ( oleobject pdisp,  any npage,  any fdone )
event privacyimpactedstatechange ( boolean bimpacted )
integer x = 59
integer y = 80
integer width = 2089
integer height = 1628
integer taborder = 20
borderstyle borderstyle = stylelowered!
boolean focusrectangle = false
string binarykey = "w_saveashtml.win"
integer binaryindex = 1
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
end type

type cb_3 from commandbutton within w_saveashtml
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

type cb_2 from commandbutton within w_saveashtml
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

type cb_clear from commandbutton within w_saveashtml
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

type cb_execute from commandbutton within w_saveashtml
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

type cb_close from commandbutton within w_saveashtml
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

type mle_output from multilineedit within w_saveashtml
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

type lb_items from listbox within w_saveashtml
integer x = 55
integer y = 1820
integer width = 2098
integer height = 480
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
end event

type gb_5 from groupbox within w_saveashtml
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

type mle_describe from multilineedit within w_saveashtml
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

type gb_1 from groupbox within w_saveashtml
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

type gb_2 from groupbox within w_saveashtml
integer x = 23
integer y = 1756
integer width = 2162
integer height = 572
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

type gb_4 from groupbox within w_saveashtml
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
string text = "PBÔËÐÐ½á¹û"
end type

type gb_3 from groupbox within w_saveashtml
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

type cb_4 from commandbutton within w_saveashtml
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

event clicked;messagebox('',dw_1.modify(sle_1.text))

end event

type cb_5 from commandbutton within w_saveashtml
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


Start of PowerBuilder Binary Data Section : Do NOT Edit
05w_saveashtml.bin 
2300000a00e011cfd0e11ab1a1000000000000000000000000000000000003003e0009fffe000000060000000000000000000000010000000100000000000010000000000200000001fffffffe0000000000000000fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffdfffffffefffffffefffffffeffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff006f00520074006f004500200074006e00790072000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000050016ffffffffffffffff00000001000000000000000000000000000000000000000000000000000000002726ea8001cd7c4200000003000000c00000000000500003004f0042005800430054005300450052004d0041000000000000000000000000000000000000000000000000000000000000000000000000000000000102001affffffff00000002ffffffff000000000000000000000000000000000000000000000000000000000000000000000000fffffffe0000000000000000004200500043004f00530058004f00540041005200450047000000000000000000000000000000000000000000000000000000000000000000000000000000000001001affffffffffffffff000000038856f96111d0340ac0006ba9a205d74f000000002726ea8001cd7c422726ea8001cd7c42000000000000000000000000004f00430054004e004e00450053005400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001020012ffffffffffffffffffffffff000000000000000000000000000000000000000000000000000000000000000000000000000000000000009c000000000000000100000002fffffffeffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
24ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000004c00002f5600002a2b0000000000000000000000000000000000000000000000000000004c0000000000000000000000010057d0e011cf3573000869ae62122e2b00000008000000000000004c0002140100000000000000c046000000000000800000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a00e011cfd0e11ab1a1000000000000000000000000000000000003003e0009fffe000000060000000000000000000000010000000100000000000010000000000200000001fffffffe0000000000000000fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffdfffffffefffffffefffffffeffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff006f00520074006f004500200074006e00790072000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000050016ffffffffffffffff00000001000000000000000000000000000000000000000000000000000000002726ea8001cd7c4200000003000000c00000000000500003004f0042005800430054005300450052004d0041000000000000000000000000000000000000000000000000000000000000000000000000000000000102001affffffff00000002ffffffff000000000000000000000000000000000000000000000000000000000000000000000000fffffffe0000000000000000004200500043004f00530058004f00540041005200450047000000000000000000000000000000000000000000000000000000000000000000000000000000000001001affffffffffffffff000000038856f96111d0340ac0006ba9a205d74f000000002726ea8001cd7c422726ea8001cd7c42000000000000000000000000004f00430054004e004e004500530054
2600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001020012ffffffffffffffffffffffff000000000000000000000000000000000000000000000000000000000000000000000000000000000000009c000000000000000100000002fffffffeffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000004c00002f3b00002a110000000000000000000000000000000000000000000000000000004c0000000000000000000000010057d0e011cf3573000869ae62122e2b00000008000000000000004c0002140100000000000000c04600000000000080000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
15w_saveashtml.bin 
End of PowerBuilder Binary Data Section : No Source Expected After This Point
