$PBExportHeader$w_ui.srw
forward
global type w_ui from window
end type
type cb_3 from commandbutton within w_ui
end type
type cb_2 from commandbutton within w_ui
end type
type cb_1 from commandbutton within w_ui
end type
type cb_clear from commandbutton within w_ui
end type
type cb_execute from commandbutton within w_ui
end type
type cb_close from commandbutton within w_ui
end type
type mle_output from multilineedit within w_ui
end type
type lb_items from listbox within w_ui
end type
type gb_5 from groupbox within w_ui
end type
type mle_describe from multilineedit within w_ui
end type
type gb_1 from groupbox within w_ui
end type
type gb_2 from groupbox within w_ui
end type
type p_1 from picture within w_ui
end type
type dw_2 from datawindow within w_ui
end type
type gb_4 from groupbox within w_ui
end type
type gb_3 from groupbox within w_ui
end type
type dw_1 from datawindow within w_ui
end type
end forward

global type w_ui from window
integer width = 4443
integer height = 2460
boolean titlebar = true
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
cb_1 cb_1
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
dw_2 dw_2
gb_4 gb_4
gb_3 gb_3
dw_1 dw_1
end type
global w_ui w_ui

type variables
//OutPut Index 
Integer ii_index = 0
Boolean ib_IsMax = false
Integer ii_dwWidth,ii_dwHeight,ii_dwX,ii_dwY,ii_pWidth,ii_pHeight,ii_pX,ii_pY
string ls_itemstring
end variables

forward prototypes
public subroutine wf_describe ()
public subroutine wf_init_items ()
public subroutine wf_scriptexe (integer ai_item, boolean ab_execute)
public subroutine wf_scriptview (string as_script)
public function string wf_function (integer ai_int, ref string as_arg)
public subroutine wf_output (string as_mess, boolean ab_clear)
public subroutine wf_savedw ()
public subroutine wf_run (string as_item, integer ai_itemvalue, string as_itemvalue, datawindow ad_datawindow, string as_dataobject, boolean ab_execute, string as_script)
public subroutine wf_createpicture (integer ai_item, boolean ab_execute)
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

public subroutine wf_init_items ();////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////

lb_items.reset()

lb_items.additem("bug 18803    question:dynamic datawindow page error")
lb_items.additem("bug 18669    question:if no retrieve argument,datawindow display error")

lb_items.additem("")
lb_items.additem("bug 18608    question:if retrieve argument less than the fact, datawindow dispaly abnormal")
lb_items.additem("bug 18607    question:after set Detail's Height value to 0, no data display in datawindow")
lb_items.additem("bug 18594    question:after retrieve£¬datawindow's summary display abnormal")
lb_items.additem("bug 18567    question:after set reportObject's y property, border of report display abnormal")
lb_items.additem("bug 18565    question:after retrieve, no data retrieve out")

lb_items.additem("")
lb_items.additem("bug 18437    question:Report Object is group, Column Proerty is different")
lb_items.additem("bug 18434    question:after retrieve, the second page is empty")
lb_items.additem("bug 18399    question:after retrieve, datawindow display error")
lb_items.additem("bug 18381    question:after set Right Margin of Level 1,some line display")
lb_items.additem("bug 18380    question:Set Detail's Height value to 0 for the first level(Height.AutoSize = 'no'),summary donot dispaly")

lb_items.additem("")
lb_items.additem("bug 18358    question:currentrow error")
lb_items.additem("bug 18347    question:after retrieve, nest report dispaly abnormal")
lb_items.additem("bug 18341    question:after set computed field's visible to true,computed field donot display")
lb_items.additem("bug 18339    question:datawindow UI refresh abnormal")
lb_items.additem("bug 18327x   question:after set report's x to a negative,datawindow's UI donot changed")

lb_items.additem("")
lb_items.additem("bug 18327y   question:after set report's y to a negative, datawindow's UI donot changed")
lb_items.additem("bug 18315    question:after retrieve, data in datawindow dispaly error")
lb_items.additem("bug 18304    question:after retrieve, summary donot display in datawindow")
lb_items.additem("bug 18297    question:border of report display abnormal")
lb_items.additem("bug 18296    question:after set report's visible to false, report is still display")

lb_items.additem("")
lb_items.additem("bug 18290    question:after set Header's Height of report,header and detail of report display abnormal")
lb_items.additem("bug 18288    question:after set Height value less than ReportObject,report datawindow's detail,summary,footer display abnormal")
lb_items.additem("bug 18261    question:after execute, there are too page in datawindow")
lb_items.additem("bug 18257    question:after execute, no data retrieve out")

lb_items.additem("")
lb_items.additem("bug 18245    question:after execute retrieve,donot display displaycolumn")
lb_items.additem("bug 18239    question:after set report's visible to true, no data dispaly in report")
lb_items.additem("bug 18236    question:after execute ImportClipboard function data in datawindow donot change")
lb_items.additem("bug 18233    question:after execute retrieve, no data display in datawindow")
lb_items.additem("bug 18217    question:after set DataWindow.Print.Buttons to yes,no button display in print datawindow UI")

lb_items.additem("")
lb_items.additem("bug 18211    question:when DataWindow.Print.Preview.Buttons is no,button is still display in datawidnow")
lb_items.additem("bug 18209    question:after set Height.AutoSize to no,report's detail donot changed")
lb_items.additem("bug 18192    question:after set report's Trail_Footer property to not,datawindo's UI changed")
lb_items.additem("bug 18191    question:after set report's NewPage property to yes,datawindow's UI changed")
lb_items.additem("bug 18180    question:no button display in datawindow")

lb_items.additem("")
lb_items.additem("bug 18176    question:after change set DisplayButtons - PrintPreview,no button dispaly in header")
lb_items.additem("bug 18175    question:after change Paper Orientation,datawindow's UI donot change")
lb_items.additem("bug 18174    question:when set retrieve argument,retrieve all data,but in pb only a data retrieve out")
lb_items.additem("bug 18172    question:before execute retrieve,summary dispalyed in datawindow")
lb_items.additem("bug 18169    question:after set Left Margin is negative,datawindow's UI donot change")

lb_items.additem("")
lb_items.additem("bug 18139    question:after set report's X coordinate to a positive number,some dwo display abnormal")
lb_items.additem("bug 18138    question:after set report's Width to a negative,report donot disappear in footer")
lb_items.additem("bug 18130    question:after set Height Value to 300(Height.AutoSize = true),some pictures below 'print' button disappeared in detail")
lb_items.additem("bug 18123    question:after set report's Height to a Expression(Note:Height.Autosize= no),datawindow's UI donot changed")
lb_items.additem("bug 18119    question:after set report's Y coordinate to a positive number,no data display on datawindow")

lb_items.additem("")
lb_items.additem("bug 18117    question:after set report's X¡¢Y¡¢Width¡¢Height to a decimal,datawindow's UI changed")
lb_items.additem("bug 18114    question:after set report's nest_arguments(Single Arguments),no data retrieve out")
lb_items.additem("bug 18102    question:after setpointer of datawindow's mouse, pointer of mouse not changed")
lb_items.additem("bug 18098    question:after execute print£¬datawindow donot display data")
lb_items.additem("bug 18096    question:change datawindow's dataobject failed")
end subroutine

public subroutine wf_scriptexe (integer ai_item, boolean ab_execute);////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////

String ls_item
String ls_Value
String ls
datawindowchild ldwc_child

mle_Output.Text = ""
If ai_item < 1 Then Return
ls_item = left(lb_items.text(ai_item),10)
ls_item = trim(ls_item)
	
if ls_item = 'bug 18803' then
	dw_2.SetPosition(ToTop!)
else
	dw_2.SetPosition(ToBottom!)
end if

Choose Case ls_item
	Case 'bug 18803'
		String	ls_dwSyxA05, ls_dwSyxB05 
		String	ls_err05
		dw_2.DataObject = 'd_f160a01_composite01'
		dw_2.SetTransObject(sqlca)
		dw_2.Retrieve()
		ls_dwSyxA05 = dw_2.Describe('DataWindow.Syntax')
		wf_OutPut('dw_1.Create(ls_dwSyxA05, ls_err05)=' + string(dw_1.Create(ls_dwSyxA05, ls_err05)), false)
		If IsNull(ls_err05) Then 
			wf_OutPut('ls_err05=Null' , false)
		ElseIf  ls_err05 = '' Then 	
			wf_OutPut('ls_err05=empty string("")' , false)
		Else
			wf_OutPut('ls_err05=' + ls_err05, false)
		End If 
		dw_1.SetTransObject(sqlca)
		dw_1.Retrieve()
		ls_dwSyxB05 = dw_2.Describe('DataWindow.Syntax')
		If ls_dwSyxA05 = ls_dwSyxB05 Then 
			wf_OutPut('dw_1.Syntax = dw_2.Syntax', False)
		Else
			wf_OutPut('dw_1.Syntax <> dw_2.Syntax', False)
		End If
		wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click ¸ÃÏîºó£¬×ó±ßµÄdwÖÐµÄÊý¾Ý¼°UIÓ¦¸ÃºÍÓÒ±ßdwÖÐÊý¾Ý¼°UIÒ»Ñù",true)
		dw_1.SetPosition(ToTop!)
	case 'bug 18669'
		if ab_Execute then
			dw_1.Retrieve()
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'argument'¶Ô»°¿òÖÐµÄ'cancel'ºó£¬dwÖÐÖ»ÓÐheaderÇøÏÔÊ¾³öÀ´",true)
		else
			dw_1.DataObject = "d_f158a21_detailprop04_ui"
			dw_1.SetTransObject(SQLCA)	
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'argument'¶Ô»°¿òÖÐµÄ'cancel'ºó£¬dwÖÐÖ»ÓÐheaderÇøÏÔÊ¾³öÀ´",true)
		end if
	Case 'bug 18608'
			dw_1.DataObject = "d_f158a53_detailprop02_ui"
			dw_1.SetTransObject(SQLCA)
			dw_1.retrieve('101',1980-01-01)
			dw_1.Retrieve('101',1980-01-01,280.50,'102')
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click¸ÃÏîºó£¬ÔÚµ¯³öµÄÐÅÏ¢¿òÖÐclick OKºó£¬ÍÏ¶¯¹ö¶¯Ìõµ½×îºóÒ»Ò³£¬´ËÊ±dwµÄHeaderÇøÖÐ×îÄÚ²ãreportÖÐÓÐÊý¾ÝÏÔÊ¾´¦Àí",true)
	Case 'bug 18607'
		if ab_Execute then
			dw_1.Object.DataWindow.Detail.Height.AutoSize  = 'Yes'
			dw_1.Object.DataWindow.Detail.Height = 0
			wf_OutPut("dw_1.Object.DataWindow.Detail.Height = " + string(dw_1.Object.DataWindow.Detail.Height),true)
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' button ºó£¬dwÖÐÊý¾ÝÏÔÊ¾Õý³£",false)
		else
			dw_1.DataObject = "d_f158a52_detailprop01_ui"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			wf_OutPut("dw_1.Object.DataWindow.Detail.Height = " + string(dw_1.Object.DataWindow.Detail.Height),true)
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' button ºó£¬dwÖÐÊý¾ÝÏÔÊ¾Õý³£",false)
		end if
	Case 'bug 18594'
		dw_1.DataObject = "d_f158a52_detailprop01_ui"
		dw_1.SetTransObject(SQLCA)
		dw_1.retrieve()
		wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click¸ÃÏîºó£¬ÍÏ¶¯¹ö¶¯Ìõµ½dwµÄSummayÇø£¬SummaryÇøºÍDetailÇøÖ®¼äÓÐÒ»¶¨µÄ¿Õ°×ÇøÓò",true)		
	Case 'bug 18567'
		if ab_Execute then
			dw_1.object.dw_1.object.dw_1.Width = 1000
			dw_1.object.dw_2.object.dw_1.Width = 1000
			dw_1.object.dw_3.object.dw_1.Width = 1000
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬dwÖÐReportµÄfooterÇøµÄ±ß¿òÏÔÊ¾ÍêÕû",true)
			wf_OutPut("dw_1.object.dw_1.object.dw_1.Width = " + string(dw_1.object.dw_1.object.dw_1.Width),false)
			wf_OutPut("dw_1.object.dw_2.object.dw_1.Width = " + string(dw_1.object.dw_2.object.dw_1.Width),false)
			wf_OutPut("dw_1.object.dw_3.object.dw_1.Width = " + string(dw_1.object.dw_3.object.dw_1.Width),false)
		else
			dw_1.DataObject = "d_f158a50_headerprop01_ui"
			dw_1.SetTransObject(SQLCA)
			dw_1.retrieve()
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬dwÖÐReportµÄfooterÇøµÄ±ß¿òÏÔÊ¾ÍêÕû",true)
			wf_OutPut("dw_1.object.dw_1.object.dw_1.Width = " + string(dw_1.object.dw_1.object.dw_1.Width),false)
			wf_OutPut("dw_1.object.dw_2.object.dw_1.Width = " + string(dw_1.object.dw_2.object.dw_1.Width),false)
			wf_OutPut("dw_1.object.dw_3.object.dw_1.Width = " + string(dw_1.object.dw_3.object.dw_1.Width),false)
		end if
	Case 'bug 18565'
		dw_1.DataObject = "d_f158a50_headerprop03_ui"
		dw_1.SetTransObject(SQLCA)
		dw_1.Modify("dw_2.Nest_Arguments = ((~"'105'~"))")
		dw_1.Modify("dw_1.Nest_Arguments = ((~"'102'~"),(~"1980-01-01~"),(~"220.50~"))")
		dw_1.retrieve('102',1980-01-01,220.50,'103')
		wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click¸ÃÏîºó£¬dwÖÐÈý¸öreportÖÐ¾ùÓÐÊý¾ÝÏÔÊ¾³öÀ´",true)		
	Case 'bug 18437'
		dw_1.DataObject = "d_f158a64_dwothers01_ui"
		dw_1.Modify("dw_1.DataObject= 'd_f158a64_report10_ui' ")
		dw_1.SetTransObject(SQLCA)
		dw_1.Retrieve()
		wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click¸ÃÏîºó£¬¹Û²ìdwÖÐµÄµÚÒ»¸öreportµÄ·Ö×éÐÅÏ¢ÊÇ·ñÕý³£ÏÔÊ¾",true)		
	Case 'bug 18434'
		dw_1.DataObject = "d_f158a64_dwothers01_ui"
		dw_1.SetTransObject(SQLCA)
		dw_1.Retrieve()
		wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click¸ÃÏîºó£¬ÍÏ¶¯×ÝÏò¹ö¶¯Ìõµ½µÚ¶þÒ³£¬µÚ¶þÒ³·Ç¿Õ°×(ÎÞPBÐ§¹ûÍ¼)",true)		
	Case 'bug 18399'
		dw_1.DataObject = "d_f158a61_dwprop01_ui"
		dw_1.SetTransObject(SQLCA)
		dw_1.Retrieve()
		wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click¸ÃÏîºó£¬dwµÄÖÐ3¸öReportºáÏò²¢ÁÐÏÔÊ¾£¬ÇÒÓÐÊý¾Ý",true)
		dw_1.Modify("DataWindow.Zoom=30")
	Case 'bug 18381'
		If ab_execute Then	
			dw_1.Modify("DataWindow.print.Margin.Right = 500")
			wf_output('Level 1 Margin Right: '+String(dw_1.Describe("DataWindow.print.Margin.Right")),true)	
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬doubleclick¸ÃÏîºó£¬dwµÄ×îÓÒ±ß²»»á¶à³öÒ»Ð©ÏßÌõ(ÎÞPBÐ§¹ûÍ¼)",false)
		Else
			dw_1.DataObject = "d_f158a45_dwprop01_ui"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬doubleclick¸ÃÏîºó£¬dwµÄ×îÓÒ±ß²»»á¶à³öÒ»Ð©ÏßÌõ(ÎÞPBÐ§¹ûÍ¼)",true)
		End If
	Case 'bug 18380'
		if ab_Execute then
			dw_1.Object.DataWindow.Detail.Height.AutoSize  = 'NO'
			dw_1.Object.DataWindow.Detail.Height = 0
			ls_Value = dw_1.Object.DataWindow.Detail.Height
			wf_OutPut("dw_1.Object.DataWindow.Detail.Height = " + ls_Value,true)
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬ReportÖÐ»áÏÔÊ¾summaryÇø",false)
		else
			dw_1.DataObject = "d_f158a52_detailprop01_ui"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
	
			ls_Value = dw_1.Object.DataWindow.Detail.Height
			wf_OutPut("dw_1.Object.DataWindow.Detail.Height = " + ls_Value,true)
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬ReportÖÐ»áÏÔÊ¾summaryÇø",false)
		end if
	Case 'bug 18358'
		if ab_Execute then
			dw_1.object.cp_currentrow_t.visible = true
			dw_1.object.cp_currentrow.visible = true			
			wf_OutPut("dw_1.GetItemNumber(1,'cp_currentrow') = " + String(dw_1.GetItemNumber(1,"cp_currentrow")),true)
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬doubleclick¸ÃÏîºó£¬dwµÄReportÖÐÏÔÊ¾CurrentRow 1×ÖÑù",false)
		else
			dw_1.DataObject = "d_f158a38_detailintfunc01_ui"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬doubleclick¸ÃÏîºó£¬dwµÄReportÖÐÏÔÊ¾CurrentRow 1×ÖÑù",true)
		end if
	Case 'bug 18347'
		dw_1.DataObject = "d_f158a37_detailprop01_ui"
		dw_1.SetTransObject(SQLCA)
		dw_1.Retrieve()
		wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click¸ÃÏîºó£¬dwÖÐµÚÈý²ãreportÏÔÊ¾ÔÚµÚ¶þ²ãreportÄÚ",true)
	Case 'bug 18341'
		if ab_Execute then
			dw_1.object.dw_1.object.dw_1.object.t_cumulativepercent.visible = true
			dw_1.object.dw_1.object.dw_1.object.cp_cumulativepercent.visible = true
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬ÔÚdoubleclick¸ÃÏîºó,ÔÚdwÖÐ»áÏÔÊ¾' Cumulaivepercent: 1'×ÖÑù",true)
		else
			dw_1.DataObject = "d_f158a35_headerintfunc05_ui"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬ÔÚdoubleclick¸ÃÏîºó,ÔÚdwÖÐ»áÏÔÊ¾' Cumulaivepercent: 1'×ÖÑù",true)
		end if
	Case 'bug 18339'
		if ab_Execute then
			dw_1.object.dw_1.object.cp_getrow_t.visible = true
			dw_1.object.dw_1.object.cp_getrow.visible = true
			ls_Value = String(dw_1.object.dw_1.object.cp_getrow)
			wf_OutPut("dw_1.object.dw_1.object.cp_getrow = " + ls_Value,true)
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬ÔÚclick¸ÃÏî£¬²¢click 'execute' buttonºó,ÔÚdwÖÐ»áÏÔÊ¾'GetRow 1'×ÖÑù",false)
		else
			dw_1.DataObject = "d_f158a35_headerintfunc04_ui"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬ÔÚclick¸ÃÏî£¬²¢click 'execute' buttonºó,ÔÚdwÖÐ»áÏÔÊ¾'GetRow 1'×ÖÑù",true)
		end if
	Case 'bug 18327x'
		if ab_Execute then
			dw_1.object.dw_1.object.dw_1.x = -100
			wf_OutPut("dw_1.object.dw_1.object.dw_1.x = " + String(dw_1.object.dw_1.object.dw_1.x),true)
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£ºclick 'execute' buttonºó£¬dwÖÐµÄreport»áÏò×óÒÆ¶¯Ò»µã",false)
		else
			dw_1.DataObject = "d_f158a34_headerprop01_ui"
			dw_1.SetTransObject(SQLCA)
			dw_1.retrieve()
			wf_OutPut("dw_1.object.dw_1.object.dw_1.x = " + String(dw_1.object.dw_1.object.dw_1.x),true)
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£ºclick 'execute' buttonºó£¬dwÖÐµÄreport»áÏò×óÒÆ¶¯Ò»µã",false)
		end if
	Case 'bug 18327y'
		if ab_Execute then
			dw_1.object.dw_1.object.dw_1.y = -100
			wf_OutPut("dw_1.object.dw_1.object.dw_1.y = " + String(dw_1.object.dw_1.object.dw_1.y),true)
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£ºclick 'execute' buttonºó£¬dwÖÐµÄreport»áÏòÉÏÒÆ¶¯Ò»Ð©",false)
		else
			dw_1.DataObject = "d_f158a34_headerprop01_ui"
			dw_1.SetTransObject(SQLCA)
			dw_1.retrieve()
			wf_OutPut("dw_1.object.dw_1.object.dw_1.y = " + String(dw_1.object.dw_1.object.dw_1.y),true)
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£ºclick 'execute' buttonºó£¬dwÖÐµÄreport»áÏòÉÏÒÆ¶¯Ò»Ð©",false)
		end if
	Case 'bug 18315'
		if ab_Execute then
			dw_1.Modify("dw_1.Nest_Arguments = ((~"'103'~"),(~"1980-01-01~"),(~"150.02~"))")
			dw_1.retrieve('102',1980-01-01,220.50,'102')
			ls_Value = dw_1.object.dw_1.Nest_Arguments
			wf_OutPut("dw_1.object.dw_1.Nest_Arguments = " + ls_Value,true)
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£ºclick 'execute' buttonºó£¬ÔÚdw×îÉÏÃæÏÔÊ¾µÄÊý¾Ý£¬ÓÐ101±äÎª103",false)
		else
			dw_1.DataObject = "d_f158a34_headerprop02_ui"
			dw_1.SetTransObject(SQLCA)
			dw_1.retrieve('101',1980-01-01,280.50)
	
			ls_Value = dw_1.object.dw_1.Nest_Arguments
			wf_OutPut("dw_1.object.dw_1.Nest_Arguments = " + ls_Value,true)
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£ºclick 'execute' buttonºó£¬ÔÚdw×îÉÏÃæÏÔÊ¾µÄÊý¾Ý£¬ÓÐ101±äÎª103",false)
		end if
	Case 'bug 18304'
		if ab_Execute then
			dw_1.object.dw_1.dataobject = 'd_public_composite2_1_ui'
			dw_1.retrieve()
			ls_Value = dw_1.object.dw_1.dataobject
			wf_OutPut("dw_1.object.dw_1.dataobject = " + ls_Value,true)
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬dwµÄheaderÇøµÄReport»á¸Ä±ä£¬ÇÒReportµÄsummaryÏÔÊ¾³öÀ´£¬detailÖÐÏÔÊ¾10ÌõÊý¾Ý",false)
		else
			dw_1.DataObject = "d_f158a34_headerprop01_ui"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
	
			ls_Value = dw_1.object.dw_1.dataobject
			wf_OutPut("dw_1.object.dw_1.dataobject = " + ls_Value,true)
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬dwµÄheaderÇøµÄReport»á¸Ä±ä£¬ÇÒReportµÄsummaryÏÔÊ¾³öÀ´£¬detailÖÐÏÔÊ¾10ÌõÊý¾Ý",false)
		end if
	Case 'bug 18297'
			dw_1.DataObject = "d_f158a15_extfunc01_ui"
			dw_1.SetTransObject(SQLCA)
			dw_1.retrieve()
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£ºclick¸ÃÏîºó£¬¹Û²ìdwÖÐµÄReportµÄborderÊÇ·ñÏÔÊ¾Õý³£",true)
	Case 'bug 18296'
		if ab_Execute then
			dw_1.object.dw_1.object.dw_1.Visible = false
			ls_Value = dw_1.object.dw_1.object.dw_1.Visible
			wf_OutPut("dw_1.object.dw_1.object.dw_1.Visible = " + ls_Value,true)
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£ºexecute¸ÃÏîºó£¬dwÖÐµÄReport²»ÔÙÏÔÊ¾³öÀ´",false)
		else
			dw_1.DataObject = "d_f158a34_headerprop01_ui"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
	
			ls_Value = dw_1.object.dw_1.object.dw_1.Visible
			wf_OutPut("dw_1.object.dw_1.object.dw_1.Visible = " + ls_Value,true)
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£ºexecute¸ÃÏîºó£¬dwÖÐµÄReport²»ÔÙÏÔÊ¾³öÀ´",false)
		end if
	Case 'bug 18290'
		if ab_Execute then
			dw_1.Object.dw_1.Object.DataWindow.Header.Height = 800
			ls_Value = dw_1.Object.dw_1.Object.DataWindow.Header.Height
			wf_OutPut("dw_1.Object.dw_1.Object.DataWindow.Header.Height = " + ls_Value,true)
			wf_OutPut("Õý³£µÄUIÏÔÊ¾ÊÇ£¬execute¸ÃÏîºó£¬dwÖÐHeaderÇøºÍDetailÇø²»»áÖØµþÏÔÊ¾",false)
		else
			dw_1.DataObject = "d_f158a33_headerprop01_ui"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
	
			ls_Value = dw_1.Object.dw_1.Object.DataWindow.Header.Height
			wf_OutPut("dw_1.Object.dw_1.Object.DataWindow.Header.Height = " + ls_Value,true)
			wf_OutPut("Õý³£µÄUIÏÔÊ¾ÊÇ£¬execute¸ÃÏîºó£¬dwÖÐHeaderÇøºÍDetailÇø²»»áÖØµþÏÔÊ¾",false)
		end if
	Case 'bug 18288'
		if ab_Execute then
			dw_1.Object.DataWindow.Header.Height = 300
			ls_Value = dw_1.Object.DataWindow.Header.Height
			wf_OutPut("dw_1.Object.DataWindow.Header.Height = " + ls_Value,true)
			wf_OutPut("Õý³£µÄUIÏÔÊ¾ÊÇ£¬click¸ÃÏîºó£¬dwµÄreportÖÐ»áÏÔÊ¾Header£¬Detail£¬Summary£¬Footer×ÖÑù",false)
		else
			dw_1.DataObject = "d_f158a33_headerprop01_ui"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
	
			ls_Value = dw_1.Object.DataWindow.Header.Height
			wf_OutPut("dw_1.Object.DataWindow.Header.Height = " + ls_Value,true)
			wf_OutPut("Õý³£µÄUIÏÔÊ¾ÊÇ£¬click¸ÃÏîºó£¬dwµÄreportÖÐ»áÏÔÊ¾Header£¬Detail£¬Summary£¬Footer×ÖÑù",false)
		end if
	Case 'bug 18261'
			dw_1.DataObject = "d_F158A32_dwOthers16_ui"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			dw_1.object.dw_2.object.r_1.pen.color = 16776960
			dw_1.object.dw_2.object.r_2.pen.color = 16776960
			dw_1.object.dw_2.object.r_3.pen.color = 16776960
			dw_1.object.dw_2.object.r_4.pen.color = 16776960
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click¸ÃÏîºó£¬¹Û²ìÔÚWebÖÐ£¬dwÖÐÊý¾ÝµÄ·ÖÒ³ÊÇ·ñ¹ý¶à£¬pbÖÐÊÇ¼¸Ê®Ò³(ÎÞpbÐ§¹ûÍ¼)",true)
	Case 'bug 18257'
			dw_1.DataObject = "d_F158A32_dwOthers11_ui"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			dw_1.object.dw_5.object.r_1.pen.color = 16711680
			dw_1.object.dw_5.object.r_2.pen.color = 16711680
			dw_1.object.dw_2.object.r_1.pen.color = 16776960
			dw_1.object.dw_2.object.r_2.pen.color = 16776960
			dw_1.object.dw_7.object.r_1.pen.color = 65535
			dw_1.object.dw_7.object.r_2.pen.color = 65535
			dw_1.object.dw_8.object.r_1.pen.color = 0
			dw_1.object.dw_8.object.r_2.pen.color = 0
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click¸ÃÏîºó£¬dwÖÐÃ»ÓÐÊý¾ÝÏÔÊ¾³öÀ´",false)
	Case 'bug 18245'
			dw_1.DataObject = "d_F158A32_dwOthers01_ui"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click¸ÃÏîºó£¬dwÖÐÉÏÃæÁ½¸öreportÖÐv nameÁÐÏÔÊ¾µÄÊÇÊý×Ö100µÈ£¬²»ÊÇ×Ö·û´®name1µÈ",false)
	Case 'bug 18239'
		dw_1.setredraw(false)
		if ab_Execute then
			dw_1.object.dw_3.visible = 1
			Wf_OutPut("dw_3.visible = " + dw_1.Describe("dw_3.visible"),true)
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬ÔÚdwÏÂ·½µÄfooterÇøÖÐÓÐÒ»¸öreportÏÔÊ¾³öÀ´£¬ÇÒÀïÃæÓÐÊý¾Ý",false)
		else
			dw_1.DataObject = "d_f158a27_footerprop06_ui"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
	
			Wf_OutPut("dw_3.visible = " + dw_1.Describe("dw_3.visible"),true)
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬ÔÚdwÏÂ·½µÄfooterÇøÖÐÓÐÒ»¸öreportÏÔÊ¾³öÀ´£¬ÇÒÀïÃæÓÐÊý¾Ý",false)
		end if
		dw_1.Modify("datawindow.VerticalScrollPosition = 10000")
		dw_1.setredraw(true)
	Case 'bug 18236'
		If ab_execute Then
			ls =  "100	NAME10	M	50	1/1/1980 00:00:00	200.00	A01	101~r~n101	NAME11	M	20	1/1/1980 00:00:00	280.50	A01	101~r~n102	NAME12	W	20	1/1/1980 00:00:00	220.50	A03	103~r~n103	NAME13	W	20	1/1/1980 00:00:00	150.02	A04	104~r~n104	NAME14	M	30	1/2/1980 00:00:00	250.00	A05	101~r~n105	NAME15	M	40	1/2/1980 00:00:00	350.98	A06	106~r~n106	NAME16	W	60	1/2/1980 00:00:00	400.00	A07	107~r~n107	NAME17	W	20	1/2/1980 00:00:00	450.00	A08	108~r~n108	NAME18	W	30	1/3/1980 00:00:00	350.00	A09	109~r~n109	NAME19	M	10	1/3/1980 00:00:00	250.00	A09	110"
			Clipboard(ls)
			dw_1.getchild('dw_1',ldwc_child)
			dw_1.modify("dw_1.height.autosize = yes")			
			wf_output('ImportClipboard return: '+string(ldwc_child.ImportClipboard()),true)				
			wf_output("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬dwÖÐµÄReportÖÐµÄÊý¾ÝÓÐ10ÌõÔö¼ÓÎª20Ìõ",False)							
			dw_1.Modify("datawindow.VerticalScrollPosition = 700")
		Else
			dw_1.DataObject = "d_f158a15_extfunc01_15_ui"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			dw_1.Modify("datawindow.VerticalScrollPosition = 500")
			wf_output("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬dwÖÐµÄReportÖÐµÄÊý¾ÝÓÐ10ÌõÔö¼ÓÎª20Ìõ",False)				
		End If
	Case 'bug 18233'
		if ab_Execute then
			dw_1.Retrieve('102','101',1980-01-01,280.50)
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬dwÖÐµÄÁ½¸öReportÖÐÓÐÊý¾ÝÏÔÊ¾³öÀ´",true)
		else
			dw_1.DataObject = "d_f158a24_sumprop04_ui"
			dw_1.SetTransObject(SQLCA)
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬dwÖÐµÄÁ½¸öReportÖÐÓÐÊý¾ÝÏÔÊ¾³öÀ´",true)
		end if
	Case 'bug 18217'
		If ab_execute Then
			dw_1.modify('DataWindow.Print.Buttons =yes')
			wf_output('Print buttons: '+String(dw_1.Describe("DataWindow.Print.buttons")),true)
         wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬ÔÚclick 'print' button£¬ÔÚ´òÓ¡³öÀ´µÄdwµÄheaderÇø»áÏÔÊ¾Ò»¸ö'print'Í¼°¸µÄbutton(Çë¹Û²ì´òÓ¡³öÀ´µÄÎÄ¼þ)",false)
		Else
			dw_1.DataObject = "d_F158A29_dwprop01_ui"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
         wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬ÔÚclick 'print' button£¬ÔÚ´òÓ¡³öÀ´µÄdwµÄheaderÇø»áÏÔÊ¾Ò»¸ö'print'Í¼°¸µÄbutton(Çë¹Û²ì´òÓ¡³öÀ´µÄÎÄ¼þ)",true)
		End If
	Case 'bug 18211'
		If ab_execute Then
			wf_output('Preview Buttons: '+String(dw_1.Describe("DataWindow.Print.Preview.Buttons")),true)		
         wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click¸ÃÏîºó£¬ÔÚdwµÄDetailÇøÖÐ²»»áÏÔÊ¾button",false)
		Else				
			dw_1.DataObject = "d_F158A29_dwprop01_ui"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()            
         wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click¸ÃÏîºó£¬ÔÚdwµÄDetailÇøÖÐ²»»áÏÔÊ¾button",true)
		End If
	Case 'bug 18209'
		If ab_execute Then
			dw_1.modify("dw_1.height.autosize = no")
         wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬dwÖÐReportÖ»ÏÔÊ¾footerÇø",true)
		Else
			dw_1.DataObject = "d_f158a15_extfunc01_ui"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
         wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬dwÖÐReportÖ»ÏÔÊ¾footerÇø",true)
		End If
	Case 'bug 18192'
		if ab_Execute then
			dw_1.modify("dw_2.Trail_Footer = 'No'")
			Wf_OutPut("dw_2.Trail_Footer = " + dw_1.Describe("dw_2.Trail_Footer"),true)
         wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬dwµÄUIÏÔÊ¾²»»á·¢Éú±ä»¯",false)
		else
			dw_1.DataObject = "d_f158a24_sumprop01_ui"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			Wf_OutPut("dw_2.Trail_Footer = " + dw_1.Describe("dw_2.Trail_Footer"),true)
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬dwµÄUIÏÔÊ¾²»»á·¢Éú±ä»¯",false)
		end if
	Case 'bug 18191'
		if ab_Execute then
			dw_1.modify("dw_2.newpage = 'Yes'")
			Wf_OutPut("dw_2.newpage = " + dw_1.Describe("dw_2.newpage"),true)
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬dwµÄUIÏÔÊ¾²»»á·¢Éú±ä»¯",false)
		else
			dw_1.DataObject = "d_f158a24_sumprop01_ui"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			Wf_OutPut("dw_2.newpage = " + dw_1.Describe("dw_2.newpage"),true)
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬dwµÄUIÏÔÊ¾²»»á·¢Éú±ä»¯",false)
		end if
	Case 'bug 18180'
		If ab_execute Then
			dw_1.Modify("DataWindow.Print.Preview.buttons = yes")
			wf_output('Preview buttons : '+String(dw_1.Describe("DataWindow.Print.Preview.buttons")),true)				
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click¸ÃÏîºó£¬dwÖÐÓÐÏÔÊ¾'header button','detail button','summary button','footer button'¼¸¸öbutton. ReportÖÐÓÐÏÔÊ¾'header','detail','footer'¼¸¸öbutton",false)
		Else	
			dw_1.DataObject = "d_f158a14_dwevent01_ui"
			dw_1.SettransObject(SQLCA)
			dw_1.Retrieve()                             
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click¸ÃÏîºó£¬dwÖÐÓÐÏÔÊ¾'header button','detail button','summary button','footer button'¼¸¸öbutton. ReportÖÐÓÐÏÔÊ¾'header','detail','footer'¼¸¸öbutton",true)
		End If
	Case 'bug 18176'
		If ab_execute Then
			dw_1.Modify("DataWindow.Print.Preview.buttons = yes")
			wf_output('Preview buttons : '+String(dw_1.Describe("DataWindow.Print.Preview.buttons")),true)				
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬dwÖÐµÄheaderÇøÖÐÓÐ'Preview','Ruler','Print'Èý¸öbutton³öÏÖ",false)
		Else	
			dw_1.DataObject = "d_f158a13_dwprop06_ui"
			dw_1.SettransObject(SQLCA)
			dw_1.Retrieve()                             
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬dwÖÐµÄheaderÇøÖÐÓÐ'Preview','Ruler','Print'Èý¸öbutton³öÏÖ",true)
		End If
	Case 'bug 18175'
		If ab_execute Then
			dw_1.modify("DataWindow.print.Orientation = 1")
			wf_output('Orientation: ' + String(dw_1.Describe("DataWindow.print.Orientation")),true)				
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬dwÖÐ´òÓ¡Ö½ÕÅµÄ·½ÏòÓÉ×ÝÏò±äÎªºáÏò(ÎÞPBÐ§¹ûÍ¼)",false)
		Else				
			dw_1.DataObject = "d_f158a13_dwprop06_ui"
			dw_1.SettransObject(SQLCA)
			dw_1.Retrieve()           
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬dwÖÐ´òÓ¡Ö½ÕÅµÄ·½ÏòÓÉ×ÝÏò±äÎªºáÏò(ÎÞPBÐ§¹ûÍ¼)",true)
		End If
	Case 'bug 18174'
		if ab_Execute then
			dw_1.Retrieve('102','101',1980-01-01,280.50)
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬dwÖÐÖ»ÓÐÒ»ÌõÊý¾ÝÏÔÊ¾³öÀ´",true)
		else
			dw_1.DataObject = "d_f158a21_detailprop04_ui"
			dw_1.SetTransObject(SQLCA)
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬dwÖÐÖ»ÓÐÒ»ÌõÊý¾ÝÏÔÊ¾³öÀ´",true)
		end if
	Case 'bug 18172'
		if ab_Execute then
			wf_OutPut("Please input ('102','101',1980-01-01,280.50)",true)
			dw_1.Retrieve('102','101',1980-01-01,280.50)
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬µ±click¸ÃÏîºó£¬dwÖÐÖ»ÓÐheaderÏÔÊ¾³öÀ´",false)
		else
			dw_1.DataObject = "d_f158a21_detailprop04_ui"
			dw_1.SetTransObject(SQLCA)
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬µ±click¸ÃÏîºó£¬dwÖÐÖ»ÓÐheaderÏÔÊ¾³öÀ´",true)
		end if
	Case 'bug 18169'
		If ab_execute Then
			dw_1.Modify("DataWindow.print.Margin.left = -500")
			wf_output('Margin left: ' + String(dw_1.Describe("DataWindow.print.Margin.left")),true)	
			wf_output("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬dwÏò×óÒÆ¶¯",False)
		Else
			dw_1.DataObject = "d_F158A13_dwprop06_ui"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			wf_output("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬dwÏò×óÒÆ¶¯",False)
		End If
	Case 'bug 18139'
		dw_1.setredraw(false)
		if ab_Execute then
			dw_1.modify("dw_1.x = 100")
			wf_OutPut("dw_1.x = " + String(dw_1.Describe("dw_1.x")),true)
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬ÔÚdwÏÂ·½FooterÇøÖÐ¸÷¸ö¿Ø¼þÎª·ÇÍ¸Ã÷É«£¬ÇÒÎ»ÓÚdwµÄÉÏÒ»²ã",false)
		else
			dw_1.DataObject = "d_f158a11_footerprop01_ui"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			wf_OutPut("dw_1.x = " + String(dw_1.Describe("dw_1.x")),true)
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬ÔÚdwÏÂ·½FooterÇøÖÐ¸÷¸ö¿Ø¼þÎª·ÇÍ¸Ã÷É«£¬ÇÒÎ»ÓÚdwµÄÉÏÒ»²ã",false)
		end if
		dw_1.Modify("datawindow.VerticalScrollPosition = 10000")
		dw_1.setredraw(true)
	Case 'bug 18138'
		dw_1.setredraw(false)
		if ab_Execute then
			dw_1.modify("dw_1.width = -100")
			wf_OutPut("dw_1.width = " + String(dw_1.Describe("dw_1.width")),true)
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬ÔÚdwÏÂ·½FooterÇøµÄreport²»¿ÉÊÓ",false)
		else
			dw_1.DataObject = "d_f158a11_footerprop01_ui"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			wf_OutPut("dw_1.width = " + String(dw_1.Describe("dw_1.width")),true)
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬ÔÚdwÏÂ·½FooterÇøµÄreport²»¿ÉÊÓ",false)
		end if
		dw_1.Modify("datawindow.VerticalScrollPosition = 10000")
		dw_1.setredraw(true)
	Case 'bug 18130'
		if ab_Execute then
			dw_1.Modify("DataWindow.Detail.Height = 300")
			ls_Value = dw_1.Describe("DataWindow.Detail.Height")
			wf_Output("DataWindow.Detail.Height = " + ls_Value,true)
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬DetailÇøÖÐ£¬PrintÏÂÃæµÄÍ¼±ê²»»áÏûÊ§",false)
		else
			dw_1.DataObject = "d_f158a04_detailprop02_ui"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			ls_Value = dw_1.Describe("DataWindow.Detail.Height")
			wf_Output("DataWindow.Detail.Height = " + ls_Value,true)
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬DetailÇøÖÐ£¬PrintÏÂÃæµÄÍ¼±ê²»»áÏûÊ§",false)
		end if
	Case 'bug 18123'
		if ab_Execute then
			dw_1.modify("dw_1.Height.Autosize= No")
			dw_1.modify("dw_1.height = ~"0~~tif (currentrow() = getrow(),200,0)~"")
			wf_OutPut("dw_1.Height = " + String(dw_1.Describe("dw_1.Height")),true)
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬Ç¶Ì×µÄdwµÄHeight±äÎª0",false)
		else
			dw_1.DataObject = "d_f158a02_headerprop01_ui"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			wf_OutPut("dw_1.Height = " + String(dw_1.Describe("dw_1.Height")),true)
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬Ç¶Ì×µÄdwµÄHeight±äÎª0",false)
		end if
	Case 'bug 18119'
		if ab_Execute then
			dw_1.modify("dw_1.y = 100")
			wf_OutPut("dw_1.y = " + String(dw_1.Describe("dw_1.y")),true)
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬¶à´Îclick 'execute' buttonºó£¬dwÖÐÈÔÓÐÊý¾ÝÏÔÊ¾",false)
		else
			dw_1.DataObject = "d_f158a02_headerprop01_ui"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			wf_OutPut("dw_1.y = " + String(dw_1.Describe("dw_1.y")),true)
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬¶à´Îclick 'execute' buttonºó£¬dwÖÐÈÔÓÐÊý¾ÝÏÔÊ¾",false)
		end if
	Case 'bug 18117'
		dw_1.setredraw(false)
		if ab_Execute then
			dw_1.modify("dw_1.x = 100.5")
			dw_1.modify("dw_1.y = 100.5")
			dw_1.modify("dw_1.width = 100.5")
			dw_1.modify("dw_1.height = 100.5")
	
			wf_OutPut("dw_1.x = " + String(dw_1.Describe("dw_1.x")),true)
			wf_OutPut("dw_1.y = " + String(dw_1.Describe("dw_1.y")),false)
			wf_OutPut("dw_1.width = " + String(dw_1.Describe("dw_1.width")),false)
			wf_OutPut("dw_1.Height = " + String(dw_1.Describe("dw_1.Height")),false)	
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬ÔÚdwÏÂ·½footerÇøÖÐµÄreportµÄUI²»»á·¢Éú±ä»¯",false)
		else
			dw_1.DataObject = "d_f158a11_footerprop01_ui"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			wf_OutPut("dw_1.x = " + String(dw_1.Describe("dw_1.x")),true)
			wf_OutPut("dw_1.y = " + String(dw_1.Describe("dw_1.y")),false)
			wf_OutPut("dw_1.width = " + String(dw_1.Describe("dw_1.width")),false)
			wf_OutPut("dw_1.Height = " + String(dw_1.Describe("dw_1.Height")),false)
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬ÔÚdwÏÂ·½footerÇøÖÐµÄreportµÄUI²»»á·¢Éú±ä»¯",false)
		end if
		dw_1.Modify("datawindow.VerticalScrollPosition = 10000")
		dw_1.setredraw(true)
	Case 'bug 18114'
		if ab_Execute then
			dw_1.Modify("dw_1.Nest_Arguments =((~"as_id~"))")
			dw_1.SetTransObject(SQLCA)
			dw_1.retrieve('101')
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬ÓÐÊý¾ÝÏÔÊ¾³öÀ´",true)
		else
			dw_1.DataObject = "d_f158a02_headerprop05_ui"
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬ÓÐÊý¾ÝÏÔÊ¾³öÀ´",true)
		end if
	Case 'bug 18102'
		Integer li_Cycle
		String ls_ItemText

		SetPointer(HourGlass!)
		if ab_Execute then
			dw_1.Modify("DataWindow.Header.Pointer = 'C:\WINNT\Cursors\arrow_il.cur'")
			ls_Value = dw_1.Describe("DataWindow.Header.Pointer")
			wf_OutPut("DataWindow.Header.Pointer = " + ls_Value,true)
			wf_OutPut("ÕýÈ·UIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬µ±Êó±êÒÆµ½headerÇøÊ±£¬Êó±êµÄÐÎ×´»á±ä",false)
		else
			dw_1.DataObject = "d_f158a01_headerprop02_ui"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			ls_Value = dw_1.Describe("DataWindow.Header.Pointer")
			wf_Output("DataWindow.Header.Pointer = " + ls_Value,true)
			wf_OutPut("ÕýÈ·UIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬µ±Êó±êÒÆµ½headerÇøÊ±£¬Êó±êµÄÐÎ×´»á±ä",false)
		end if
	Case 'bug 18098'
		dw_1.dataObject = "d_f158a01_headerprop01_ui"
		dw_1.SetTransObject(SQLCA)
		dw_1.Retrieve()
		wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬Ñ¡ÖÐ¸ÃÏî²¢click 'print' buttonºó£¬dwÖÐµÄÊý¾ÝÈÔÕý³£ÏÔÊ¾(ÎÞpbÐ§¹ûÍ¼)",true)
	Case 'bug 18096'
		dw_1.setredraw(false)
		if ab_Execute then
			dw_1.Object.dw_1.DataObject = 'd_public_composite2_11_ui'

			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬ÔÚdwÏÂ·½footerÇøÖÐµÄreportµÄUIÓ¦¸Ã·¢Éú¸Ä±ä",true)
		else
			wf_OutPut("ÕýÈ·µÄUIÏÔÊ¾ÊÇ£¬click 'execute' buttonºó£¬ÔÚdwÏÂ·½footerÇøÖÐµÄreportµÄUIÓ¦¸Ã·¢Éú¸Ä±ä",true)
			dw_1.DataObject = "d_f158a11_footerprop01_ui"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
		end if
		dw_1.Modify("datawindow.VerticalScrollPosition = 10000")
		dw_1.setredraw(true)
End Choose

choose case ls_item
	Case 'bug 18803'
	Case 'bug 18594'
	Case 'bug 18434'
	Case 'bug 18315'
	Case 'bug 18261'
	Case 'bug 18245'
	Case 'bug 18175'
	Case 'bug 18098'
		dw_1.setredraw(true)
	Case 'bug 18399'
		dw_1.modify("datawindow.zoom = 30")
	Case else
		dw_1.modify("datawindow.zoom = 60")
end choose

end subroutine

public subroutine wf_scriptview (string as_script);
end subroutine

public function string wf_function (integer ai_int, ref string as_arg);////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////
Wf_output("Call Window Function~r~nString w_case_style_1th.wf_function (integer "+String(ai_int)+", ref string "+as_arg+")",False)

Return ""
end function

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

public subroutine wf_run (string as_item, integer ai_itemvalue, string as_itemvalue, datawindow ad_datawindow, string as_dataobject, boolean ab_execute, string as_script);////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////

if ab_execute then
	as_item = as_itemvalue
	wf_output(as_item + "=" + string(as_item),false)
else
	ad_datawindow.dataobject = as_dataobject
	ad_datawindow.SetTransObject(SQLCA)
	ad_datawindow.Retrieve()	
end if
end subroutine

public subroutine wf_createpicture (integer ai_item, boolean ab_execute);////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////

String ls_item
String ls_Value
String ls
datawindowchild ldwc_child

mle_Output.Text = ""
If ai_item < 1 Then Return
ls_item = left(lb_items.text(ai_item),10)
ls_item = trim(ls_item)

//if (ls_item <> 'bug 18315)' then
	//dw_1.Modify("DataWindow.Zoom=60")
	
Choose Case ls_item
	Case 'bug 18381'
			dw_1.DataObject = "d_f158a45_dwprop01"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			dw_1.Modify("DataWindow.print.Margin.Right = 500")
	Case 'bug 18380'
			dw_1.DataObject = "d_f158a52_detailprop01"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			dw_1.Object.DataWindow.Detail.Height.AutoSize  = 'NO'
			dw_1.Object.DataWindow.Detail.Height = 0
	Case 'bug 18358'
			dw_1.DataObject = "d_f158a38_detailintfunc01"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			dw_1.object.cp_currentrow_t.visible = true
			dw_1.object.cp_currentrow.visible = true
	Case 'bug 18347'
		dw_1.DataObject = "d_f158a37_detailprop01"
		dw_1.SetTransObject(SQLCA)
		dw_1.Retrieve()
	Case 'bug 18341'
			dw_1.DataObject = "d_f158a35_headerintfunc05"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			dw_1.object.dw_1.object.dw_1.object.t_cumulativepercent.visible = true
			dw_1.object.dw_1.object.dw_1.object.cp_cumulativepercent.visible = true
	Case 'bug 18339'
			dw_1.DataObject = "d_f158a35_headerintfunc04"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			dw_1.object.dw_1.object.cp_getrow_t.visible = true
			dw_1.object.dw_1.object.cp_getrow.visible = true
	Case 'bug 18327x'
			dw_1.DataObject = "d_f158a34_headerprop01"
			dw_1.SetTransObject(SQLCA)
			dw_1.retrieve()
			dw_1.object.dw_1.object.dw_1.x = -100
	Case 'bug 18327y'
			dw_1.DataObject = "d_f158a34_headerprop01"
			dw_1.SetTransObject(SQLCA)
			dw_1.retrieve()
			dw_1.object.dw_1.object.dw_1.y = -100
	Case 'bug 18315'
			dw_1.DataObject = "d_f158a34_headerprop02"
			dw_1.SetTransObject(SQLCA)
			dw_1.retrieve('101',1980-01-01,280.50)
			dw_1.Modify("dw_1.Nest_Arguments = ((~"'103'~"),(~"1980-01-01~"),(~"150.02~"))")
			dw_1.retrieve('102',1980-01-01,220.50,'102')
	Case 'bug 18304'
			dw_1.DataObject = "d_f158a34_headerprop01"
			dw_1.SetTransObject(SQLCA)
			dw_1.object.dw_1.dataobject = 'd_public_composite2_1'
			dw_1.retrieve()
	Case 'bug 18297'
			dw_1.DataObject = "d_f158a15_extfunc01"
			dw_1.SetTransObject(SQLCA)
			dw_1.retrieve()
	Case 'bug 18296'
			dw_1.DataObject = "d_f158a34_headerprop01"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			dw_1.object.dw_1.object.dw_1.Visible = false
	Case 'bug 18290'
			dw_1.DataObject = "d_f158a33_headerprop01"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			dw_1.Object.dw_1.Object.DataWindow.Header.Height = 800
	Case 'bug 18288'
			dw_1.DataObject = "d_f158a33_headerprop01"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			dw_1.Object.DataWindow.Header.Height = 300
	Case 'bug 18261'
			dw_1.DataObject = "d_F158A32_dwOthers16"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			dw_1.object.dw_2.object.r_1.pen.color = 16776960
			dw_1.object.dw_2.object.r_2.pen.color = 16776960
			dw_1.object.dw_2.object.r_3.pen.color = 16776960
			dw_1.object.dw_2.object.r_4.pen.color = 16776960
	Case 'bug 18257'
			dw_1.DataObject = "d_F158A32_dwOthers11"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			dw_1.object.dw_5.object.r_1.pen.color = 16711680
			dw_1.object.dw_5.object.r_2.pen.color = 16711680
			dw_1.object.dw_2.object.r_1.pen.color = 16776960
			dw_1.object.dw_2.object.r_2.pen.color = 16776960
			dw_1.object.dw_7.object.r_1.pen.color = 65535
			dw_1.object.dw_7.object.r_2.pen.color = 65535
			dw_1.object.dw_8.object.r_1.pen.color = 0
			dw_1.object.dw_8.object.r_2.pen.color = 0
	Case 'bug 18245'
			dw_1.DataObject = "d_F158A32_dwOthers01"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
	Case 'bug 18239'
			dw_1.DataObject = "d_f158a27_footerprop06"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			dw_1.object.dw_3.visible = 1
		dw_1.Modify("datawindow.VerticalScrollPosition = 10000")
	Case 'bug 18236'
			ls =  "100~tNAME10~tM~t50~t1/1/1980 00:00:00	200.00~tA01~t101~r~n&
					101~tNAME11~tM~t20~t1/1/1980 00:00:00~t280.50~tA01~t101~r~n&
					102	NAME12	W	20	1/1/1980 00:00:00	220.50	A03	103~r~n&
					103	NAME13	W	20	1/1/1980 00:00:00	150.02	A04	104~r~n&
					104	NAME14	M	30	1/2/1980 00:00:00	250.00	A05	101~r~n&
					105	NAME15	M	40	1/2/1980 00:00:00	350.98	A06	106~r~n&
					106	NAME16	W	60	1/2/1980 00:00:00	400.00	A07	107~r~n&
					107	NAME17	W	20	1/2/1980 00:00:00	450.00	A08	108~r~n&
					108	NAME18	W	30	1/3/1980 00:00:00	350.00	A09	109~r~n&
					109	NAME19	M	10	1/3/1980 00:00:00	250.00	A09	110"
			Clipboard(ls)
			dw_1.DataObject = "d_f158a15_extfunc01_15"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			dw_1.getchild('dw_1',ldwc_child)
			dw_1.modify("dw_1.height.autosize = yes")
	Case 'bug 18233'
			dw_1.DataObject = "d_f158a24_sumprop04"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve('102','101',1980-01-01,280.50)
	Case 'bug 18217'
			dw_1.DataObject = "d_F158A29_dwprop01"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			dw_1.modify('DataWindow.Print.Buttons =yes')
	Case 'bug 18211'
			dw_1.DataObject = "d_F158A29_dwprop01"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve() 
	Case 'bug 18209'
			dw_1.DataObject = "d_f158a15_extfunc01"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			dw_1.modify("dw_1.height.autosize = no")
	Case 'bug 18192'
			dw_1.DataObject = "d_f158a24_sumprop01"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			dw_1.modify("dw_2.Trail_Footer = 'No'")
	Case 'bug 18191'
			dw_1.DataObject = "d_f158a24_sumprop01"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			dw_1.modify("dw_2.newpage = 'Yes'")
	Case 'bug 18180'
			dw_1.DataObject = "d_f158a14_dwevent01"
			dw_1.SettransObject(SQLCA)
			dw_1.Retrieve() 
			dw_1.Modify("DataWindow.Print.Preview.buttons = yes")
	Case 'bug 18176'
			dw_1.DataObject = "d_f158a13_dwprop06"
			dw_1.SettransObject(SQLCA)
			dw_1.Retrieve()
			dw_1.Modify("DataWindow.Print.Preview.buttons = yes")
	Case 'bug 18175'
			dw_1.DataObject = "d_f158a13_dwprop06"
			dw_1.SettransObject(SQLCA)
			dw_1.Retrieve()  
			dw_1.modify("DataWindow.print.Orientation = 1")
	Case 'bug 18174'
			dw_1.DataObject = "d_f158a21_detailprop04"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve('102','101',1980-01-01,280.50)
	Case 'bug 18172'
			dw_1.DataObject = "d_f158a21_detailprop04"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve('102','101',1980-01-01,280.50)
	Case 'bug 18169'
			dw_1.DataObject = "d_F158A13_dwprop06"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			dw_1.Modify("DataWindow.print.Margin.left = -500")
	Case 'bug 18139'
			dw_1.DataObject = "d_f158a11_footerprop01"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			dw_1.modify("dw_1.x = 100")
		dw_1.Modify("datawindow.VerticalScrollPosition = 10000")
	Case 'bug 18138'
			dw_1.DataObject = "d_f158a11_footerprop01"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			dw_1.modify("dw_1.width = -100")
		dw_1.Modify("datawindow.VerticalScrollPosition = 10000")
	Case 'bug 18130'
			dw_1.DataObject = "d_f158a04_detailprop02"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			dw_1.Modify("DataWindow.Detail.Height = 300")
	Case 'bug 18123'
			dw_1.DataObject = "d_f158a02_headerprop01"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			dw_1.modify("dw_1.Height.Autosize= No")
			dw_1.modify("dw_1.height = ~"0~~tif (currentrow() = getrow(),200,0)~"")
	Case 'bug 18119'
			dw_1.DataObject = "d_f158a02_headerprop01"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			dw_1.modify("dw_1.y = 100")
	Case 'bug 18117'
			dw_1.DataObject = "d_f158a11_footerprop01"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			dw_1.modify("dw_1.x = 100.5")
			dw_1.modify("dw_1.y = 100.5")
			dw_1.modify("dw_1.width = 100.5")
			dw_1.modify("dw_1.height = 100.5")
		dw_1.Modify("datawindow.VerticalScrollPosition = 10000")
	Case 'bug 18114'
			dw_1.DataObject = "d_f158a02_headerprop05"
			dw_1.Modify("dw_1.Nest_Arguments =((~"as_id~"))")
			dw_1.SetTransObject(SQLCA)
			dw_1.retrieve('101')
	Case 'bug 18102'
		Integer li_Cycle
		String ls_ItemText

		SetPointer(HourGlass!)
			dw_1.DataObject = "d_f158a01_headerprop02"
			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
			dw_1.Modify("DataWindow.Header.Pointer = 'C:\WINNT\Cursors\arrow_il.cur'")
	Case 'bug 18098'
		dw_1.dataObject = "d_f158a01_headerprop01"
		dw_1.SetTransObject(SQLCA)
		dw_1.Retrieve()
	Case 'bug 18096'
			dw_1.DataObject = "d_f158a11_footerprop01"
			dw_1.Object.dw_1.DataObject = 'd_public_composite2_11'

			dw_1.SetTransObject(SQLCA)
			dw_1.Retrieve()
		dw_1.Modify("datawindow.VerticalScrollPosition = 10000")
End Choose
end subroutine

on w_ui.create
this.cb_3=create cb_3
this.cb_2=create cb_2
this.cb_1=create cb_1
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
this.dw_2=create dw_2
this.gb_4=create gb_4
this.gb_3=create gb_3
this.dw_1=create dw_1
this.Control[]={this.cb_3,&
this.cb_2,&
this.cb_1,&
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
this.dw_2,&
this.gb_4,&
this.gb_3,&
this.dw_1}
end on

on w_ui.destroy
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.cb_1)
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
destroy(this.dw_2)
destroy(this.gb_4)
destroy(this.gb_3)
destroy(this.dw_1)
end on

event open;//Add Describe
Wf_Describe()
//Init ListBox to add Test Items
Wf_Init_Items()

wf_Savedw()

dw_1.SetTransObject(SQLCA)
dw_1.Retrieve()
dw_1.Modify("DataWindow.Zoom=60")
p_1.PictureName = "original.bmp"
ls_itemstring = "original"

mle_output.text = '01 ÔËÐÐÇ°ÇëÏÈcomposite_ui.rarËù°üº¬µÄÍ¼Æ¬ÎÄ¼þ½âÑ¹µ½¸Ã°¸ÀýËùÔÚµÄÄ¿Â¼' +' ~r~n'
mle_output.text += '02 Ë«»÷datawindow¡¢pictureÊ±£¬¿É×î´ó»¯ÏÔÊ¾datawindow¡¢picture' +' ~r~n'
mle_output.text += '03 ´°¿ÚÓÒ±ßµÄpictureÊÇ¶ÔÓ¦datawindowµÄpbÔËÐÐÐ§¹ûÍ¼' +' ~r~n'
end event

event close;Rollback USING SQLCA;
end event

type cb_3 from commandbutton within w_ui
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

event clicked;int li_item, li_ItemSum
string ls_item, ls_PicName, ls_name
ls_name = ""
li_ItemSum = lb_items.TotalItems()
FOR li_item = 1 to li_ItemSum
	ls_item = left(lb_items.text(li_item),10)
	ls_name += ls_item
	ls_item = trim(ls_item)
	ls_PicName = "f:\composite_ui\picture\" + ls_item + ".wmf"
	wf_createpicture(li_item,false)
   dw_1.saveas(ls_picName,WMF!,true)
NEXT
mle_output.text = ls_name


end event

type cb_2 from commandbutton within w_ui
integer x = 4046
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

type cb_1 from commandbutton within w_ui
integer x = 2281
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
string text = "Print"
end type

event clicked;dw_1.Print()
end event

type cb_clear from commandbutton within w_ui
integer x = 3136
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

type cb_execute from commandbutton within w_ui
integer x = 2706
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

wf_Scriptexe(lb_items.selectedindex(),True)
end event

type cb_close from commandbutton within w_ui
integer x = 3570
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

type mle_output from multilineedit within w_ui
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

type lb_items from listbox within w_ui
integer x = 59
integer y = 1820
integer width = 2085
integer height = 476
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

event selectionchanged;//View Script

IF index > 0 THEN
	wf_Scriptexe(lb_items.selectedindex(),False)
	ls_itemstring = left(lb_items.text(index),10)	
	ls_itemstring = trim(ls_itemstring)
	p_1.setredraw(false)
	p_1.PictureName = ls_itemstring + ".bmp"
	p_1.setredraw(true)
END IF
end event

event doubleclicked;//Execute Script
//string ls_item
IF index > 0 THEN
	wf_Scriptexe(lb_items.selectedindex(),True)
	ls_itemstring = left(lb_items.text(index),10)	
	ls_itemstring = trim(ls_itemstring)
	p_1.setredraw(false)
	p_1.PictureName = ls_itemstring + ".bmp"
	p_1.setredraw(true)
END IF
end event

type gb_5 from groupbox within w_ui
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

type mle_describe from multilineedit within w_ui
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

type gb_1 from groupbox within w_ui
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

type gb_2 from groupbox within w_ui
integer x = 27
integer y = 1756
integer width = 2149
integer height = 568
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

type p_1 from picture within w_ui
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
	p_1.PictureName = ls_itemstring + "_big.bmp"
else
	p_1.x = ii_pX
	p_1.y = ii_pY
	p_1.Width = ii_pWidth
	p_1.Height = ii_pHeight
	p_1.PictureName = ls_itemstring + ".bmp"
end if
p_1.SetPosition(ToTop!)
end event

type dw_2 from datawindow within w_ui
integer x = 2254
integer y = 88
integer width = 2094
integer height = 1624
integer taborder = 30
boolean bringtotop = true
string title = "none"
string dataobject = "d_f158a34_headerprop01_ui"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event doubleclicked;//ib_IsMax = Not ib_IsMax
//boolean lb_flag
//int li_zoom = 60
//lb_flag = true
//choose case ls_itemstring
//	Case 'bug 18803'
//	Case 'bug 18594'
//	Case 'bug 18434'
//	Case 'bug 18315'
//	Case 'bug 18261'
//	Case 'bug 18245'
//	Case 'bug 18175'
//	Case 'bug 18098'
//		lb_flag = false
//	Case 'bug 18399'
//		li_zoom = 30
//end choose
//		
//if ib_IsMax then
//	dw_2.x = 0
//	dw_2.y = 0
//	dw_2.width = Parent.Width - 40
//	dw_2.Height = Parent.Height - 108
//	dw_2.Modify("DataWindow.Zoom=100")
//else
//	dw_2.x = ii_dwX
//	dw_2.y = ii_dwY
//	dw_2.Width = ii_dwWidth
//	dw_2.Height = ii_dwHeight
//	if lb_flag then
//		dw_2.Modify("DataWindow.Zoom=" + string(li_zoom))
//	end if
//end if
//dw_2.SetPosition(ToTop!)
end event

type gb_4 from groupbox within w_ui
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

type gb_3 from groupbox within w_ui
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

type dw_1 from datawindow within w_ui
integer x = 55
integer y = 88
integer width = 2094
integer height = 1624
integer taborder = 20
boolean bringtotop = true
string title = "none"
string dataobject = "d_f158a34_headerprop01_ui"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event doubleclicked;ib_IsMax = Not ib_IsMax
boolean lb_flag
int li_zoom = 60
lb_flag = true
choose case ls_itemstring
	Case 'bug 18803'
		lb_flag = false
	Case 'bug 18594'
		lb_flag = false
	Case 'bug 18434'
		lb_flag = false
	Case 'bug 18315'
		lb_flag = false
	Case 'bug 18261'
		lb_flag = false
	Case 'bug 18245'
		lb_flag = false
	Case 'bug 18175'
		lb_flag = false
	Case 'bug 18098'
		lb_flag = false
	Case 'bug 18399'
		li_zoom = 30
end choose
		
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
	if lb_flag then
		dw_1.Modify("DataWindow.Zoom=" + string(li_zoom))
	end if
end if
dw_1.SetPosition(ToTop!)
end event

