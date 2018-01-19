$PBExportHeader$w_dwdataaccess.srw
forward
global type w_dwdataaccess from window
end type
type cb_autorun from commandbutton within w_dwdataaccess
end type
type cbx_showright from checkbox within w_dwdataaccess
end type
type st_error from statictext within w_dwdataaccess
end type
type dw_2 from datawindow within w_dwdataaccess
end type
type cbx_1 from checkbox within w_dwdataaccess
end type
type lb_testitems from listbox within w_dwdataaccess
end type
type cb_run from commandbutton within w_dwdataaccess
end type
type cb_saveas from commandbutton within w_dwdataaccess
end type
type cb_error from commandbutton within w_dwdataaccess
end type
type cbx_right from checkbox within w_dwdataaccess
end type
type cb_max from commandbutton within w_dwdataaccess
end type
type cb_1 from commandbutton within w_dwdataaccess
end type
type cb_sort from commandbutton within w_dwdataaccess
end type
type cb_reset from commandbutton within w_dwdataaccess
end type
type dw_1 from datawindow within w_dwdataaccess
end type
type dw_output from datawindow within w_dwdataaccess
end type
type gb_1 from groupbox within w_dwdataaccess
end type
type gb_2 from groupbox within w_dwdataaccess
end type
type gb_3 from groupbox within w_dwdataaccess
end type
type gb_4 from groupbox within w_dwdataaccess
end type
end forward

global type w_dwdataaccess from window
integer width = 4658
integer height = 2724
boolean titlebar = true
string title = "DataWindow RowOrColumnStatus"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
event ue_autorun ( )
cb_autorun cb_autorun
cbx_showright cbx_showright
st_error st_error
dw_2 dw_2
cbx_1 cbx_1
lb_testitems lb_testitems
cb_run cb_run
cb_saveas cb_saveas
cb_error cb_error
cbx_right cbx_right
cb_max cb_max
cb_1 cb_1
cb_sort cb_sort
cb_reset cb_reset
dw_1 dw_1
dw_output dw_output
gb_1 gb_1
gb_2 gb_2
gb_3 gb_3
gb_4 gb_4
end type
global w_dwdataaccess w_dwdataaccess

type variables
int ii_error_no = 0,ii_number = 1,ii_errornumber = 0,ii_rightnumber = 0
end variables

forward prototypes
public function integer wf_syntax1 ()
public function string wf_getvaluestring (datawindow adw_cur, long al_srow, long al_erow, long al_scol, long al_ecol, dwbuffer adw_buffer, boolean ab_orig_value)
public subroutine wf_output (string as_orivalue, string as_curvalue, string as_type)
public subroutine wf_syntax2 ()
public subroutine wf_syntax3 ()
public subroutine wf_syntax4 ()
public subroutine wf_syntax5 ()
public function string wf_arraytostring (readonly str_dataexppart astr_value[])
public function string wf_arraytostring (readonly any aa_value[])
public subroutine wf_syntax6 ()
public subroutine wf_syntax7 ()
public function string wf_arraytostring (readonly str_dataexpall astr_value[])
public subroutine wf_dotoperate (boolean ab_save)
public subroutine wf_runorsave (boolean ab_save, long al_row, string as_col, dwbuffer adw_buffer, string as_source, string as_status, integer ai_flag)
public subroutine wf_dotoperatortonull (boolean ab_save)
public subroutine wf_dotoperatorfromnull (boolean ab_save)
public subroutine wf_message (string as_operate, string as_problem)
public function integer wf_returnerror ()
end prototypes

event ue_autorun();cbx_right.checked = false
cb_autorun.TriggerEvent(clicked!)
cb_error.TriggerEvent(clicked!)
cb_saveas.TriggerEvent(clicked!)
cbx_right.checked = true
end event

public function integer wf_syntax1 ();//syntax1:dwcontrol.Object.dwcolumnname{.buffer} {.datasource}{[rownum]}
any la_value
long ll_value,ll_array[],ll_i
string ls_message[]
string ls_CurValue,ls_OriValue

dw_1.DataObject = 'd_dwdataaccess'
dw_1.SetTransobject(sqlca)
dw_1.Retrieve()
dw_2.Reset()
//Delete
dw_1.DeleteRow(1)
dw_1.DeleteRow(1)
for ll_i = 1 to dw_1.DeletedCount()
	dw_1.object.emp_id.delete[ll_i] = 4000
next

//Filter
dw_1.SetFilter("emp_id > 500")
dw_1.Filter()
for ll_i = 1 to dw_1.FilteredCount()
	dw_1.object.emp_id.filter[ll_i] = 5000
next

//101 	dwcontrol.Object.columnname   --½á¹ûÊÇÁÐ¶ÔÏó£¬¶ø²»ÊÇÊý¾ÝÒ²Òª²âÊÔ
la_value = classname(dw_1.object.emp_id)
wf_output('dwobject',f_string(la_value),"Get:dwcontrol.Object.ColumNname")


//102 	dwcontrol.Object.columnname[] 
la_value = classname(dw_1.object.emp_id[])
wf_output('dwobject',f_string(la_value),"Get:dwcontrol.Object.ColumNname[]")

//103 	dwcontrol.Object.columnname[row] 
ll_value = dw_1.object.emp_id[1]
ls_OriValue = wf_GetValueString(dw_1,1,1,1,1,primary!,false)
ls_CurValue = /*wf_ArrayToString(ll_array)*/string(ll_value)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.ColumNname[1]")

dw_2.object.emp_id[1] = ll_value
ls_OriValue = wf_GetValueString(dw_2,1,1,1,1,primary!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.ColumNname[1]")


//201	dwcontrol.Object.columnname.current
ll_array = dw_1.object.emp_id.current
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.rowCount(),1,1,primary!,false)
ls_CurValue = wf_ArrayToString(ll_array)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.ColumNname.current")

dw_2.object.emp_id.current = ll_array
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.RowCount(),1,1,primary!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.ColumNname.current")

//202	dwcontrol.Object.columnname.current[]

ll_array = dw_1.object.emp_id.current[]
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.rowCount(),1,1,primary!,false)
ls_CurValue = wf_ArrayToString(ll_array)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.ColumNname.current[]")

dw_2.object.emp_id.current[] = ll_array
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.RowCount(),1,1,primary!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.ColumNname.current[]")

//203	dwcontrol.Object.columnname.current[row]

ll_value = dw_1.object.emp_id.current[1]
ls_OriValue = wf_GetValueString(dw_1,1,1,1,1,primary!,false)
ls_CurValue = String(ll_value)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.ColumNname.current[1]")

dw_2.object.emp_id.current[1] = ll_value
ls_OriValue = wf_GetValueString(dw_2,1,1,1,1,primary!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.ColumNname.current[1]")

//204	dwcontrol.Object.columnname.original

ll_array = dw_1.object.emp_id.original
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.rowCount(),1,1,primary!,false)
ls_CurValue = wf_ArrayToString(ll_array)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.ColumNname.original")

dw_2.object.emp_id.original = ll_array
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.RowCount(),1,1,primary!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.ColumNname.original")

//205	dwcontrol.Object.columnname.original[]

ll_array = dw_1.object.emp_id.original[]
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.rowCount(),1,1,primary!,false)
ls_CurValue = wf_ArrayToString(ll_array)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.ColumNname.original[]")

dw_2.object.emp_id.original[] = ll_array
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.RowCount(),1,1,primary!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.ColumNname.original[]")
//206	dwcontrol.Object.columnname.original[row]

ll_value = dw_1.object.emp_id.original[1]
ls_OriValue = wf_GetValueString(dw_1,1,1,1,1,primary!,false)
ls_CurValue = String(ll_value)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.ColumNname.original[1]")

dw_2.object.emp_id.original[1] = ll_value
ls_OriValue = wf_GetValueString(dw_2,1,1,1,1,primary!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.ColumNname.original[1]")
//
//301	dwcontrol.Object.columnname.primary

ll_array = dw_1.object.emp_id.primary
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.rowCount(),1,1,primary!,false)
ls_CurValue = wf_ArrayToString(ll_array)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.ColumNname.primary")

dw_2.object.emp_id.primary = ll_array
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.RowCount(),1,1,primary!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.ColumNname.primary")

//302	dwcontrol.Object.columnname.primary[]

ll_array = dw_1.object.emp_id.primary[]
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.rowCount(),1,1,primary!,false)
ls_CurValue = wf_ArrayToString(ll_array)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.ColumNname.primary[]")

dw_2.object.emp_id.primary[] = ll_array
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.RowCount(),1,1,primary!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.ColumNname.primary[]")
//303	dwcontrol.Object.columnname.primary[row]

ll_value = dw_1.object.emp_id.primary[1]
ls_OriValue = wf_GetValueString(dw_1,1,1,1,1,primary!,false)
ls_CurValue = String(ll_value)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.ColumNname.primary[1]")

dw_2.object.emp_id.primary[1] = ll_value
ls_OriValue = wf_GetValueString(dw_2,1,1,1,1,primary!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.ColumNname.primary[1]")

//304	dwcontrol.Object.columnname.filter

ll_array = dw_1.object.emp_id.filter
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.FilteredCount(),1,1,filter!,false)
ls_CurValue = wf_ArrayToString(ll_array)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.ColumNname.filter")

dw_2.object.emp_id.filter = ll_array
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.FilteredCount(),1,1,filter!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.ColumNname.filter")
//305	dwcontrol.Object.columnname.filter[]

ll_array = dw_1.object.emp_id.filter[]
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.FilteredCount(),1,1,filter!,false)
ls_CurValue = wf_ArrayToString(ll_array)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.ColumNname.filter[]")

dw_2.object.emp_id.filter[] = ll_array
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.FilteredCount(),1,1,filter!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.ColumNname.filter[]")
//306	dwcontrol.Object.columnname.filter[row]

ll_value = dw_1.object.emp_id.filter[1]
ls_OriValue = wf_GetValueString(dw_1,1,1,1,1,filter!,false)
ls_CurValue = String(ll_value)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.ColumNname.filter[1]")

dw_2.object.emp_id.filter[1] = ll_value
ls_OriValue = wf_GetValueString(dw_2,1,1,1,1,filter!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.ColumNname.filter[1]")

//307	dwcontrol.Object.columnname.delete

ll_array = dw_1.object.emp_id.delete
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.DeletedCount(),1,1,delete!,false)
ls_CurValue = wf_ArrayToString(ll_array)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.ColumNname.delete")
dw_2.object.emp_id.delete = ll_array
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.DeletedCount(),1,1,delete!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.ColumNname.delete")

//308	dwcontrol.Object.columnname.delete[]

ll_array = dw_1.object.emp_id.delete[]
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.DeletedCount(),1,1,delete!,false)
ls_CurValue = wf_ArrayToString(ll_array)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.ColumNname.delete[]")
dw_2.object.emp_id.delete[] = ll_array
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.DeletedCount(),1,1,delete!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.ColumNname.delete[]")

//309	dwcontrol.Object.columnname.delete[row]

ll_value = dw_1.object.emp_id.delete[1]
ls_OriValue = wf_GetValueString(dw_1,1,1,1,1,delete!,false)
ls_CurValue = String(ll_value)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.ColumNname.delete[1]")

dw_2.object.emp_id.delete[1] = ll_value
ls_OriValue = wf_GetValueString(dw_2,1,1,1,1,delete!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.ColumNname.delete[1]")

//
//
//401	dwcontrol.Object.columnname.primary.current

ll_array = dw_1.object.emp_id.primary.current
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.rowCount(),1,1,primary!,false)
ls_CurValue = wf_ArrayToString(ll_array)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.ColumNname.primary.current")

dw_2.object.emp_id.primary.current = ll_array
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.RowCount(),1,1,primary!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.ColumNname.primary.current")

//402	dwcontrol.Object.columnname.primary.current[]

ll_array = dw_1.object.emp_id.primary.current[]
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.rowCount(),1,1,primary!,false)
ls_CurValue = wf_ArrayToString(ll_array)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.ColumNname.primary.current[]")

dw_2.object.emp_id.primary.current[] = ll_array
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.RowCount(),1,1,primary!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.ColumNname.primary.current[]")
//403	dwcontrol.Object.columnname.primary.current[row]

ll_value = dw_1.object.emp_id.primary.current[1]
ls_OriValue = wf_GetValueString(dw_1,1,1,1,1,primary!,false)
ls_CurValue = String(ll_value)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.ColumNname.primary.current[1]")

dw_2.object.emp_id.primary.current[1] = ll_value
ls_OriValue = wf_GetValueString(dw_2,1,1,1,1,primary!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.ColumNname.primary.current[1]")

//404	dwcontrol.Object. columnname.primary.original

ll_array = dw_1.object.emp_id.primary.original
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.rowCount(),1,1,primary!,true)
ls_CurValue = wf_ArrayToString(ll_array)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.ColumNname.primary.original")

dw_2.object.emp_id.primary.original = ll_array
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.RowCount(),1,1,primary!,true)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.ColumNname.primary.original")
//405	dwcontrol.Object. columnname.primary.original[]

ll_array = dw_1.object.emp_id.primary.original[]
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.rowCount(),1,1,primary!,true)
ls_CurValue = wf_ArrayToString(ll_array)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.ColumNname.primary.original[]")

dw_2.object.emp_id.primary.original[] = ll_array
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.RowCount(),1,1,primary!,true)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.ColumNname.primary.original[]")
//406	dwcontrol.Object. columnname.primary.original[row]

ll_value = dw_1.object.emp_id.primary.original[1]
ls_OriValue = wf_GetValueString(dw_1,1,1,1,1,primary!,true)
ls_CurValue = String(ll_value)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.ColumNname.primary.original[1]")

dw_2.object.emp_id.primary.original[1] = ll_value
ls_OriValue = wf_GetValueString(dw_2,1,1,1,1,primary!,true)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.ColumNname.primary.original[1]")

//407	dwcontrol.Object.columnname.filter.current

ll_array = dw_1.object.emp_id.filter.current
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.FilteredCount(),1,1,filter!,false)
ls_CurValue = wf_ArrayToString(ll_array)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.ColumNname.filter.current")

dw_2.object.emp_id.filter.current = ll_array
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.FilteredCount(),1,1,filter!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.ColumNname.filter.current")
//408	dwcontrol.Object.columnname.filter.current[]

ll_array = dw_1.object.emp_id.filter.current[]
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.FilteredCount(),1,1,filter!,false)
ls_CurValue = wf_ArrayToString(ll_array)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.ColumNname.filter.current[]")

dw_2.object.emp_id.filter.current[] = ll_array
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.FilteredCount(),1,1,filter!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.ColumNname.filter.current[]")
//409	dwcontrol.Object.columnname.filter.current[row]

ll_value = dw_1.object.emp_id.filter.current[1]
ls_OriValue = wf_GetValueString(dw_1,1,1,1,1,filter!,false)
ls_CurValue = String(ll_value)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.ColumNname.filter.current[1]")

dw_2.object.emp_id.filter.current[1] = ll_value
ls_OriValue = wf_GetValueString(dw_2,1,1,1,1,filter!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.ColumNname.filter.current[1]")

//410	dwcontrol.Object. columnname.filter.original

ll_array = dw_1.object.emp_id.filter.original
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.FilteredCount(),1,1,filter!,true)
ls_CurValue = wf_ArrayToString(ll_array)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.ColumNname.filter.original")

//Filter»º³åÇøÍ¨¹ýÊý×éÉèÖÃÔ­Ê¼ÖµPB±¨ÄÚ´æ´í
//dw_2.object.emp_id.filter.original = ll_array
//ls_OriValue = wf_GetValueString(dw_2,1,dw_2.FilteredCount(),1,1,filter!,true)
//wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.ColumNname.filter.original")

//411	dwcontrol.Object. columnname.filter.original[]

ll_array = dw_1.object.emp_id.filter.original[]
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.FilteredCount(),1,1,filter!,true)
ls_CurValue = wf_ArrayToString(ll_array)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.ColumNname.filter.original[]")

//dw_2.object.emp_id.filter.original[] = ll_array
//ls_OriValue = wf_GetValueString(dw_2,1,dw_2.FilteredCount(),1,1,filter!,true)
//wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.ColumNname.filter.original[]")

//412	dwcontrol.Object. columnname.filter.original[row]

ll_value = dw_1.object.emp_id.filter.original[1]
ls_OriValue = wf_GetValueString(dw_1,1,1,1,1,filter!,true)
ls_CurValue = String(ll_value)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.ColumNname.filter.original[1]")

dw_2.object.emp_id.filter.original[1] = ll_value
ls_OriValue = wf_GetValueString(dw_2,1,1,1,1,filter!,true)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.ColumNname.filter.original[1]")


//413	dwcontrol.Object.columnname.delete.current

ll_array = dw_1.object.emp_id.delete.current
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.DeletedCount(),1,1,delete!,false)
ls_CurValue = wf_ArrayToString(ll_array)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.ColumNname.delete.current")
dw_2.object.emp_id.delete.current = ll_array
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.DeletedCount(),1,1,delete!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.ColumNname.delete.current")

//414	dwcontrol.Object.columnname.delete.current[]

ll_array = dw_1.object.emp_id.delete.current[]
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.DeletedCount(),1,1,delete!,false)
ls_CurValue = wf_ArrayToString(ll_array)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.ColumNname.delete.current[]")
dw_2.object.emp_id.delete.current[] = ll_array
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.DeletedCount(),1,1,delete!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.ColumNname.delete.current[]")
//415	dwcontrol.Object.columnname.delete.current[row]

ll_value = dw_1.object.emp_id.delete.current[1]
ls_OriValue = wf_GetValueString(dw_1,1,1,1,1,delete!,false)
ls_CurValue = String(ll_value)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.ColumNname.delete.current[1]")

dw_2.object.emp_id.delete.current[1] = ll_value
ls_OriValue = wf_GetValueString(dw_2,1,1,1,1,delete!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.ColumNname.delete.current[1]")

//416	dwcontrol.Object. columnname.delete.original

ll_array = dw_1.object.emp_id.delete.original
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.DeletedCount(),1,1,delete!,true)
ls_CurValue = wf_ArrayToString(ll_array)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.ColumNname.delete.original")
dw_2.object.emp_id.delete.original = ll_array
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.DeletedCount(),1,1,delete!,true)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.ColumNname.delete.original")
//417	dwcontrol.Object. columnname.delete.original[]

ll_array = dw_1.object.emp_id.delete.original[]
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.DeletedCount(),1,1,delete!,true)
ls_CurValue = wf_ArrayToString(ll_array)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.ColumNname.delete.original[]")
dw_2.object.emp_id.delete.original[] = ll_array
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.DeletedCount(),1,1,delete!,true)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.ColumNname.delete.original[]")
//418	dwcontrol.Object. columnname.delete.original[row]

ll_value = dw_1.object.emp_id.delete.original[1]
ls_OriValue = wf_GetValueString(dw_1,1,1,1,1,delete!,true)
ls_CurValue = String(ll_value)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.ColumNname.delete.original[1]")

dw_2.object.emp_id.delete.original[1] = ll_value
ls_OriValue = wf_GetValueString(dw_2,1,1,1,1,delete!,true)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.ColumNname.delete.original[1]")

return 1
end function

public function string wf_getvaluestring (datawindow adw_cur, long al_srow, long al_erow, long al_scol, long al_ecol, dwbuffer adw_buffer, boolean ab_orig_value);long ll_row,ll_col
any la_value
string ls_return

for ll_row = al_srow to al_erow
	for ll_col = al_scol to al_ecol
		CHOOSE CASE Lower (left(adw_cur.Describe ("#"+string(ll_col) + ".ColType" ),5))
			CASE "char(", "char","strin"		//  CHARACTER DATATYPE
				la_value = adw_cur.GetItemString ( ll_row, ll_col, adw_buffer, ab_orig_value ) 
			CASE "date"					//  DATE DATATYPE
				la_value = adw_cur.GetItemDate ( ll_row, ll_col, adw_buffer, ab_orig_value ) 
			CASE "datet"				//  DATETIME DATATYPE
				la_value = adw_cur.GetItemDateTime ( ll_row, ll_col, adw_buffer, ab_orig_value ) 
			CASE "decim"				//  DECIMAL DATATYPE
				la_value = adw_cur.GetItemDecimal ( ll_row, ll_col, adw_buffer, ab_orig_value ) 
			CASE "numbe", "long", "ulong", "real", "int"				//  NUMBER DATATYPE	
				la_value = adw_cur.GetItemNumber ( ll_row, ll_col, adw_buffer, ab_orig_value ) 
			CASE "time", "times"		//  TIME DATATYPE
				la_value = adw_cur.GetItemTime ( ll_row, ll_col, adw_buffer, ab_orig_value ) 
			CASE ELSE 
				la_value = 'null'
		END CHOOSE
		ls_return+= string(la_value)
	next
next

return ls_return
end function

public subroutine wf_output (string as_orivalue, string as_curvalue, string as_type);string ls_message[]

ls_message[]= {"Right","JS",as_type,as_OriValue}
if as_OriValue = as_CurValue then
	if cbx_right.checked then
		ii_rightnumber++
		f_outputtext(dw_output,ls_message)
	end if
else
	ii_error_no++
	ii_errornumber++
	ls_message[1] = 'Error'
	ls_message[2] = 'PB'
	f_outputtext(dw_output,ls_message)
	ls_message[2] = 'JS'
	ls_message[4] = as_CurValue
	f_outputtext(dw_output,ls_message)
end if
end subroutine

public subroutine wf_syntax2 ();//syntax2:dwcontrol.Object.columnname {.Primary } {.datasource }.Selected
long ll_array[]
string ls_OriValue,ls_CurValue
long ll_i

dw_1.DataObject = 'd_dwdataaccess'
dw_1.SetTransobject(sqlca)
dw_1.Retrieve()
dw_2.SetTransObject(sqlca)
dw_2.Retrieve()

for ll_i = 1 to 3
	dw_1.SetItem(ll_i,'emp_id',5000)
	dw_1.SelectRow(ll_i,true)
next

//dwcontrol.Object.columnname.Selected
ll_array = dw_1.object.emp_id.selected
ls_OriValue = wf_GetValueString(dw_1,1,3,1,1,primary!,false)
ls_CurValue = wf_ArrayToString(ll_array)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.columnname.Selected")


dw_2.SelectRow(0,false)
for ll_i = 1 to 3
	dw_2.SelectRow(ll_i+4,true)
next
//dw_2.object.emp_id.Selected = ll_array
//ls_OriValue = wf_GetValueString(dw_2,5,8,1,1,primary!,false)
//wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.columnname.Selected")

//dwcontrol.Object.columnname.primary .Selected
//ll_array = dw_1.Object.emp_id.Primary.Selected
//ls_OriValue = wf_GetValueString(dw_1,1,3,1,1,primary!,false)
//ls_CurValue = wf_ArrayToString(ll_array)
//wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.columnname.primary.Selected")
//
//
//dw_2.SelectRow(0,false)
//for ll_i = 1 to 3
//	dw_2.SelectRow(ll_i+4,true)
//next
//dw_2.object.emp_id.primary.Selected = ll_array
//ls_OriValue = wf_GetValueString(dw_2,5,8,1,1,primary!,false)
//wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.columnname.primary.Selected")

//dwcontrol.Object.columnname.current.Selected
ll_array = dw_1.Object.emp_id.current.Selected
ls_OriValue = wf_GetValueString(dw_1,1,3,1,1,primary!,false)
ls_CurValue = wf_ArrayToString(ll_array)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.columnname.current.Selected")


dw_2.SelectRow(0,false)
for ll_i = 1 to 3
	dw_2.SelectRow(ll_i+4,true)
next
//dw_2.object.emp_id.current.Selected = ll_array
//ls_OriValue = wf_GetValueString(dw_2,5,8,1,1,primary!,false)
//wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.columnname.current.Selected")

//dwcontrol.Object.columnname.Primary.current.Selected
//ll_array = dw_1.Object.emp_id.primary.current.Selected
//ls_OriValue = wf_GetValueString(dw_1,1,3,1,1,primary!,false)
//ls_CurValue = wf_ArrayToString(ll_array)
//wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.columnname.primary.current.Selected")
//
//
//dw_2.SelectRow(0,false)
//for ll_i = 1 to 3
//	dw_2.SelectRow(ll_i+4,true)
//next
//dw_2.object.emp_id.primary.current.Selected = ll_array
//ls_OriValue = wf_GetValueString(dw_2,5,8,1,1,primary!,false)
//wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.columnname.primary.current.Selected")


//
//dwcontrol.Object.columnname.original.Selected
ll_array = dw_1.Object.emp_id.original.Selected
ls_OriValue = wf_GetValueString(dw_1,1,3,1,1,primary!,true)
ls_CurValue = wf_ArrayToString(ll_array)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.columnname.original.Selected")


dw_2.SelectRow(0,false)
for ll_i = 1 to 3
	dw_2.SelectRow(ll_i+4,true)
next
//dw_2.object.emp_id.original.Selected = ll_array
//ls_OriValue = wf_GetValueString(dw_2,5,8,1,1,primary!,true)
//wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.columnname.original.Selected")


//dwcontrol.Object.columnname.Primary. original.Selected
//ll_array = dw_1.Object.emp_id.primary.original.Selected
//ls_OriValue = wf_GetValueString(dw_1,1,3,1,1,primary!,true)
//ls_CurValue = wf_ArrayToString(ll_array)
//wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.columnname.primary.original.Selected")
//

//dw_2.SelectRow(0,false)
//for ll_i = 1 to 3
//	dw_2.SelectRow(ll_i+4,true)
//next
//dw_2.object.emp_id.primary.original.Selected = ll_array
//ls_OriValue = wf_GetValueString(dw_2,5,8,1,1,primary!,true)
//wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.columnname.primary.original.Selected")

end subroutine

public subroutine wf_syntax3 ();//syntax3:dwcontrol.Object.columnname{.buffer}{.datasource}[startrow,endrow
long ll_array[],ll_i
string ls_CurValue,ls_OriValue

dw_1.DataObject = 'd_dwdataaccess'
dw_1.SetTransobject(sqlca)
dw_1.Retrieve()
dw_2.Reset()
//Delete
dw_1.DeleteRow(1)
dw_1.DeleteRow(1)
dw_1.DeleteRow(1)
dw_1.DeleteRow(1)
dw_1.DeleteRow(1)
for ll_i = 1 to dw_1.DeletedCount()
	dw_1.object.emp_id.delete[ll_i] = 4000
next

//Filter
dw_1.SetFilter("emp_id > 800")
dw_1.Filter()
for ll_i = 1 to dw_1.FilteredCount()
	dw_1.object.emp_id.filter[ll_i] = 5000
next

//primary
for ll_i = 1 to dw_1.Rowcount()
	dw_1.setItem(ll_i,'emp_id',6000)
next

//dwcontrol.Object.columnname[ startrow,endrow ]
ll_array = dw_1.object.emp_id[1,5]
ls_OriValue = wf_GetValueString(dw_1,1,5,1,1,primary!,false)
ls_CurValue = wf_ArrayToString(ll_array)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.columnname[ startrow,endrow ]")

dw_2.object.emp_id[1,5] = ll_array
ls_OriValue = wf_GetValueString(dw_2,1,5,1,1,primary!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.columnname[ startrow,endrow ]")

//dwcontrol.Object.columnname.current[ startrow,endrow ]
ll_array = dw_1.object.emp_id.current[1,5]
ls_OriValue = wf_GetValueString(dw_1,1,5,1,1,primary!,false)
ls_CurValue = wf_ArrayToString(ll_array)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.columnname.current[ startrow,endrow ]")

dw_2.object.emp_id.current[1,5] = ll_array
ls_OriValue = wf_GetValueString(dw_2,1,5,1,1,primary!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.columnname.current[ startrow,endrow ]")

//dwcontrol.Object.columnname.original[ startrow,endrow ]
ll_array = dw_1.object.emp_id.original[1,5]
ls_OriValue = wf_GetValueString(dw_1,1,5,1,1,primary!,true)
ls_CurValue = wf_ArrayToString(ll_array)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.columnname.original[ startrow,endrow ]")

dw_2.object.emp_id.original[1,5] = ll_array
ls_OriValue = wf_GetValueString(dw_2,1,5,1,1,primary!,true)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.columnname.original[ startrow,endrow ]")
//
//dwcontrol.Object.columnname.primary[ startrow,endrow ]
ll_array = dw_1.object.emp_id.primary[1,5]
ls_OriValue = wf_GetValueString(dw_1,1,5,1,1,primary!,false)
ls_CurValue = wf_ArrayToString(ll_array)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.columnname.primary[ startrow,endrow ]")

dw_2.object.emp_id.primary[1,5] = ll_array
ls_OriValue = wf_GetValueString(dw_2,1,5,1,1,primary!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.columnname.primary[ startrow,endrow ]")

//dwcontrol.Object.columnname.primary.current[ startrow,endrow ]
ll_array = dw_1.object.emp_id.primary.current[1,5]
ls_OriValue = wf_GetValueString(dw_1,1,5,1,1,primary!,false)
ls_CurValue = wf_ArrayToString(ll_array)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.columnname.primary.current[ startrow,endrow ]")

dw_2.object.emp_id.primary.current[1,5] = ll_array
ls_OriValue = wf_GetValueString(dw_2,1,5,1,1,primary!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.columnname.primary.current[ startrow,endrow ]")

//dwcontrol.Object.columnname.primary.original[ startrow,endrow ]
ll_array = dw_1.object.emp_id.primary.original[1,5]
ls_OriValue = wf_GetValueString(dw_1,1,5,1,1,primary!,true)
ls_CurValue = wf_ArrayToString(ll_array)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.columnname.primary.original[ startrow,endrow ]")

dw_2.object.emp_id.primary.original[1,5] = ll_array
ls_OriValue = wf_GetValueString(dw_2,1,5,1,1,primary!,true)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.columnname.primary.original[ startrow,endrow ]")


//dwcontrol.Object.columnname.delete[ startrow,endrow ]
ll_array = dw_1.object.emp_id.delete[1,5]
ls_OriValue = wf_GetValueString(dw_1,1,5,1,1,delete!,false)
ls_CurValue = wf_ArrayToString(ll_array)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.columnname.delete[ startrow,endrow ]")

dw_2.object.emp_id.delete[1,5] = ll_array
ls_OriValue = wf_GetValueString(dw_2,1,5,1,1,delete!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.columnname.delete[ startrow,endrow ]")

//dwcontrol.Object.columnname.delete. current [ startrow,endrow ]
ll_array = dw_1.object.emp_id.delete.current[1,5]
ls_OriValue = wf_GetValueString(dw_1,1,5,1,1,delete!,false)
ls_CurValue = wf_ArrayToString(ll_array)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.columnname.delete.current[ startrow,endrow ]")

dw_2.object.emp_id.delete.current[1,5] = ll_array
ls_OriValue = wf_GetValueString(dw_2,1,5,1,1,delete!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.columnname.delete.current[ startrow,endrow ]")

//dwcontrol.Object.columnname.delete original [ startrow,endrow ]
ll_array = dw_1.object.emp_id.delete.original[1,5]
ls_OriValue = wf_GetValueString(dw_1,1,5,1,1,delete!,true)
ls_CurValue = wf_ArrayToString(ll_array)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.columnname.delete.original[ startrow,endrow ]")

dw_2.object.emp_id.delete.original[1,5] = ll_array
ls_OriValue = wf_GetValueString(dw_2,1,5,1,1,delete!,true)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.columnname.delete.original[ startrow,endrow ]")


//dwcontrol.Object.columnname.filter[ startrow,endrow ]
ll_array = dw_1.object.emp_id.filter[1,5]
ls_OriValue = wf_GetValueString(dw_1,1,5,1,1,filter!,false)
ls_CurValue = wf_ArrayToString(ll_array)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.columnname.filter[ startrow,endrow ]")

dw_2.object.emp_id.filter[1,5] = ll_array
ls_OriValue = wf_GetValueString(dw_2,1,5,1,1,filter!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.columnname.filter[ startrow,endrow ]")

//dwcontrol.Object.columnname.filter. current [ startrow,endrow ]
ll_array = dw_1.object.emp_id.filter.current[1,5]
ls_OriValue = wf_GetValueString(dw_1,1,5,1,1,filter!,false)
ls_CurValue = wf_ArrayToString(ll_array)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.columnname.filter.current[ startrow,endrow ]")

dw_2.object.emp_id.filter.current[1,5] = ll_array
ls_OriValue = wf_GetValueString(dw_2,1,5,1,1,filter!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.columnname.filter.current[ startrow,endrow ]")



//dwcontrol.Object.columnname.filter original [ startrow,endrow ]
ll_array = dw_1.object.emp_id.filter.original[1,5]
ls_OriValue = wf_GetValueString(dw_1,1,5,1,1,filter!,true)
ls_CurValue = wf_ArrayToString(ll_array)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object.columnname.filter.original[ startrow,endrow ]")

dw_2.object.emp_id.filter.original[1,5] = ll_array
ls_OriValue = wf_GetValueString(dw_2,1,5,1,1,filter!,true)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object.columnname.filter.original[ startrow,endrow ]")


end subroutine

public subroutine wf_syntax4 ();//syntax4:dwcontrol.Object.Data {.buffer}{.datasource}[rownum, colnum]
long ll_i,ll_value
string ls_orivalue,ls_curvalue

dw_1.DataObject = 'd_dwdataaccess'
dw_1.SetTransobject(sqlca)
dw_1.Retrieve()
dw_2.Reset()
//Delete
dw_1.DeleteRow(1)
dw_1.DeleteRow(1)
dw_1.DeleteRow(1)
dw_1.DeleteRow(1)
dw_1.DeleteRow(1)

for ll_i = 1 to dw_1.DeletedCount()
	dw_1.object.emp_id.delete[ll_i] = 4000
next

//Filter
dw_1.SetFilter("emp_id > 800")
dw_1.Filter()
for ll_i = 1 to dw_1.FilteredCount()
	dw_1.object.emp_id.filter[ll_i] = 5000
next

//primary
for ll_i = 1 to 5
	dw_1.SetItem(ll_i,'emp_id',6000)
next


//dwcontrol.Object. data [ rownum,colnum ]
ll_value = dw_1.object.data[1,1]
ls_OriValue = wf_GetValueString(dw_1,1,1,1,1,primary!,false)
ls_CurValue = string(ll_value)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol..Object. data [ rownum,colnum ]")

dw_2.object.data[1,1] = ll_value
ls_OriValue = wf_GetValueString(dw_2,1,1,1,1,primary!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol..Object. data [ rownum,colnum ]")

//dwcontrol.Object. data.original [ rownum,colnum ]
ll_value = dw_1.object.data.original[2,1]
ls_OriValue = wf_GetValueString(dw_1,2,2,1,1,primary!,true)
ls_CurValue = string(ll_value)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol..Object. data.original [ rownum,colnum ]")

dw_2.object.data.original[2,1] = ll_value
ls_OriValue = wf_GetValueString(dw_2,2,2,1,1,primary!,true)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol..Object. data.original [ rownum,colnum ]")

//dwcontrol.Object. data.current [ rownum,colnum ]
ll_value = dw_1.object.data.current[2,1]
ls_OriValue = wf_GetValueString(dw_1,2,2,1,1,primary!,false)
ls_CurValue = string(ll_value)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol..Object. data.current [ rownum,colnum ]")

dw_2.object.data.current[2,1] = ll_value
ls_OriValue = wf_GetValueString(dw_2,2,2,1,1,primary!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol..Object. data.current [ rownum,colnum ]")


//dwcontrol.Object. data.primary[ rownum,colnum ]
ll_value = dw_1.object.data.primary[3,1]
ls_OriValue = wf_GetValueString(dw_1,3,3,1,1,primary!,false)
ls_CurValue = string(ll_value)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol..Object. data.primary [ rownum,colnum ]")

dw_2.object.data.primary[3,1] = ll_value
ls_OriValue = wf_GetValueString(dw_2,3,3,1,1,primary!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol..Object. data.primary [ rownum,colnum ]")

//dwcontrol.Object. data.primary.original [ rownum,colnum ]
ll_value = dw_1.object.data.primary.original [4,1]
ls_OriValue = wf_GetValueString(dw_1,4,4,1,1,primary!,true)
ls_CurValue = string(ll_value)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol..Object. data.primary.original  [ rownum,colnum ]")

dw_2.object.data.primary.original [4,1] = ll_value
ls_OriValue = wf_GetValueString(dw_2,4,4,1,1,primary!,true)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol..Object. data.primary.original  [ rownum,colnum ]")

//dwcontrol.Object. data.primary.current [ rownum,colnum ]
ll_value = dw_1.object.data.primary.current [4,1]
ls_OriValue = wf_GetValueString(dw_1,4,4,1,1,primary!,false)
ls_CurValue = string(ll_value)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol..Object. data.primary.current  [ rownum,colnum ]")

dw_2.object.data.primary.current [4,1] = ll_value
ls_OriValue = wf_GetValueString(dw_2,4,4,1,1,primary!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol..Object. data.primary.current  [ rownum,colnum ]")

//
//dwcontrol.Object. data.delete [ rownum,colnum ]
ll_value = dw_1.object.data.delete[1,1]
ls_OriValue = wf_GetValueString(dw_1,1,1,1,1,delete!,false)
ls_CurValue = string(ll_value)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol..Object. data.delete [ rownum,colnum ]")

dw_2.object.data.delete[1,1] = ll_value
ls_OriValue = wf_GetValueString(dw_2,1,1,1,1,delete!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol..Object. data.delete [ rownum,colnum ]")

//dwcontrol.Object. data. delete.original [ rownum,colnum ]
ll_value = dw_1.object.data.delete.original [2,1]
ls_OriValue = wf_GetValueString(dw_1,2,2,1,1,delete!,true)
ls_CurValue = string(ll_value)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol..Object. data.delete.original  [ rownum,colnum ]")

dw_2.object.data.delete.original [2,1] = ll_value
ls_OriValue = wf_GetValueString(dw_2,2,2,1,1,delete!,true)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol..Object. data.delete.original  [ rownum,colnum ]")

//dwcontrol.Object. data. delete.current [ rownum,colnum ]
ll_value = dw_1.object.data.delete.current [2,1]
ls_OriValue = wf_GetValueString(dw_1,2,2,1,1,delete!,false)
ls_CurValue = string(ll_value)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol..Object. data.delete.current  [ rownum,colnum ]")

dw_2.object.data.delete.current [2,1] = ll_value
ls_OriValue = wf_GetValueString(dw_2,2,2,1,1,delete!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol..Object. data.delete.current  [ rownum,colnum ]")


//dwcontrol.Object. data.filter [ rownum,colnum ]
ll_value = dw_1.object.data.filter[1,1]
ls_OriValue = wf_GetValueString(dw_1,1,1,1,1,filter!,false)
ls_CurValue = string(ll_value)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol..Object. data.filter [ rownum,colnum ]")

dw_2.object.data.filter[1,1] = ll_value
ls_OriValue = wf_GetValueString(dw_2,1,1,1,1,filter!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol..Object. data.filter [ rownum,colnum ]")

//dwcontrol.Object. data. filter.original [ rownum,colnum ]
ll_value = dw_1.object.data.filter.original [2,1]
ls_OriValue = wf_GetValueString(dw_1,2,2,1,1,filter!,true)
ls_CurValue = string(ll_value)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol..Object. data.filter.original  [ rownum,colnum ]")

dw_2.object.data.filter.original [2,1] = ll_value
ls_OriValue = wf_GetValueString(dw_2,2,2,1,1,filter!,true)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol..Object. data.filter.original  [ rownum,colnum ]")


//dwcontrol.Object. data. filter.current [ rownum,colnum ]
ll_value = dw_1.object.data.filter.current [2,1]
ls_OriValue = wf_GetValueString(dw_1,2,2,1,1,filter!,false)
ls_CurValue = string(ll_value)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol..Object. data.filter.current  [ rownum,colnum ]")

dw_2.object.data.filter.current [2,1] = ll_value
ls_OriValue = wf_GetValueString(dw_2,2,2,1,1,filter!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol..Object. data.filter.current  [ rownum,colnum ]")
end subroutine

public subroutine wf_syntax5 ();//syntax5:dwcontrol.Object.Data{.buffer}{.datasource}[startrow,startcol, endrow, endcol]
str_dataexppart	lstr_block[]
string ls_OriValue,ls_CurValue
long ll_i

dw_1.DataObject = 'd_dwdataaccess'
dw_1.SetTransobject(sqlca)
dw_1.Retrieve()
dw_2.Reset()
//Delete
dw_1.DeleteRow(1)
dw_1.DeleteRow(1)
dw_1.DeleteRow(1)
dw_1.DeleteRow(1)
dw_1.DeleteRow(1)

for ll_i = 1 to dw_1.DeletedCount()
	dw_1.object.emp_id.delete[ll_i] = 4000
next

//Filter
dw_1.SetFilter("emp_id > 800")
dw_1.Filter()
for ll_i = 1 to dw_1.FilteredCount()
	dw_1.object.emp_id.filter[ll_i] = 5000
next

//primary
for ll_i = 1 to 10
	dw_1.SetItem(ll_i,'emp_id',6000)
next


//dwcontrol.Object. data [startrow,startcol, endrow, endcol]
lstr_block = dw_1.object.data[1,2,2,4]

ls_OriValue = wf_GetValueString(dw_1,1,2,2,4,primary!,false)
ls_CurValue = wf_ArrayToString(lstr_block)

//MessageBox("ls_OriValue","ls_OriValue = " + ls_OriValue + "~r~n" +"ls_CurValue = "+ ls_CurValue)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data [startrow,startcol, endrow, endcol]")

dw_2.object.data[1,2,2,4] = lstr_block
ls_OriValue = wf_GetValueString(dw_2,1,2,2,4,primary!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data [startrow,startcol, endrow, endcol]")

//dwcontrol.Object. data.current [startrow,startcol, endrow, endcol]
lstr_block = dw_1.object.data.current[3,2,4,4]
ls_OriValue = wf_GetValueString(dw_1,3,4,2,4,primary!,false)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.current [startrow,startcol, endrow, endcol]")

dw_2.object.data.current[3,2,4,4] = lstr_block
ls_OriValue = wf_GetValueString(dw_2,3,4,2,4,primary!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data .current[startrow,startcol, endrow, endcol]")


//dwcontrol.Object. data.original [startrow,startcol, endrow, endcol]
lstr_block = dw_1.object.data.original[3,2,4,4]
ls_OriValue = wf_GetValueString(dw_1,3,4,2,4,primary!,true)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.original [startrow,startcol, endrow, endcol]")

dw_2.object.data.original[3,2,4,4] = lstr_block
ls_OriValue = wf_GetValueString(dw_2,3,4,2,4,primary!,true)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data .original[startrow,startcol, endrow, endcol]")


//
//dwcontrol.Object. data.primary[startrow,startcol, endrow, endcol]
lstr_block = dw_1.object.data.primary[5,2,6,4]
ls_OriValue = wf_GetValueString(dw_1,5,6,2,4,primary!,false)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.primary [startrow,startcol, endrow, endcol]")

dw_2.object.data.primary[5,2,6,4] = lstr_block
ls_OriValue = wf_GetValueString(dw_2,5,6,2,4,primary!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data .primary[startrow,startcol, endrow, endcol]")

//dwcontrol.Object. data.primary.current [startrow,startcol, endrow, endcol]
lstr_block = dw_1.object.data.primary.current[7,2,8,4]
ls_OriValue = wf_GetValueString(dw_1,7,8,2,4,primary!,false)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.primary.current [startrow,startcol, endrow, endcol]")

dw_2.object.data.primary.current[7,2,8,4] = lstr_block
ls_OriValue = wf_GetValueString(dw_2,7,8,2,4,primary!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data .primary.current[startrow,startcol, endrow, endcol]")

//dwcontrol.Object. data.primary.original [startrow,startcol, endrow, endcol]
lstr_block = dw_1.object.data.primary.original[7,2,8,4]
ls_OriValue = wf_GetValueString(dw_1,7,8,2,4,primary!,true)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.primary.original [startrow,startcol, endrow, endcol]")

dw_2.object.data.primary.original[7,2,8,4] = lstr_block
ls_OriValue = wf_GetValueString(dw_2,7,8,2,4,primary!,true)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data .primary.original[startrow,startcol, endrow, endcol]")

//dwcontrol.Object. data.delete [startrow,startcol, endrow, endcol]
lstr_block = dw_1.object.data.delete[1,2,2,4]
ls_OriValue = wf_GetValueString(dw_1,1,2,2,4,delete!,false)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.delete [startrow,startcol, endrow, endcol]")

dw_2.object.data.delete[1,2,2,4] = lstr_block
ls_OriValue = wf_GetValueString(dw_2,1,2,2,4,delete!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data .delete[startrow,startcol, endrow, endcol]")

//dwcontrol.Object. data. delete.current [startrow,startcol, endrow, endcol]
lstr_block = dw_1.object.data.delete.current[3,2,4,4]
ls_OriValue = wf_GetValueString(dw_1,3,4,2,4,delete!,false)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.delete.current [startrow,startcol, endrow, endcol]")

dw_2.object.data.delete.current[3,2,4,4] = lstr_block
ls_OriValue = wf_GetValueString(dw_2,3,4,2,4,delete!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data .delete.current[startrow,startcol, endrow, endcol]")

//dwcontrol.Object. data. delete.original [startrow,startcol, endrow, endcol]
lstr_block = dw_1.object.data.delete.original[3,2,4,4]
ls_OriValue = wf_GetValueString(dw_1,3,4,2,4,delete!,true)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.delete.original [startrow,startcol, endrow, endcol]")

dw_2.object.data.delete.original[3,2,4,4] = lstr_block
ls_OriValue = wf_GetValueString(dw_2,3,4,2,4,delete!,true)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data .delete.original[startrow,startcol, endrow, endcol]")

//dwcontrol.Object. data.filter [startrow,startcol, endrow, endcol]
lstr_block = dw_1.object.data.filter[1,2,2,4]
ls_OriValue = wf_GetValueString(dw_1,1,2,2,4,filter!,false)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.filter [startrow,startcol, endrow, endcol]")

dw_2.object.data.filter[1,2,2,4] = lstr_block
ls_OriValue = wf_GetValueString(dw_2,1,2,2,4,filter!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data .filter[startrow,startcol, endrow, endcol]")
//dwcontrol.Object. data. filter.current [startrow,startcol, endrow, endcol]
lstr_block = dw_1.object.data.filter.current[3,2,4,4]
ls_OriValue = wf_GetValueString(dw_1,3,4,2,4,filter!,false)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.filter.current [startrow,startcol, endrow, endcol]")

dw_2.object.data.filter.current[3,2,4,4] = lstr_block
ls_OriValue = wf_GetValueString(dw_2,3,4,2,4,filter!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data .filter.current[startrow,startcol, endrow, endcol]")


//dwcontrol.Object. data. filter.original [startrow,startcol, endrow, endcol]
lstr_block = dw_1.object.data.filter.original[3,2,4,4]
ls_OriValue = wf_GetValueString(dw_1,3,4,2,4,filter!,true)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.filter.original [startrow,startcol, endrow, endcol]")

dw_2.object.data.filter.original[3,2,4,4] = lstr_block
ls_OriValue = wf_GetValueString(dw_2,3,4,2,4,filter!,true)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data .filter.original[startrow,startcol, endrow, endcol]")

end subroutine

public function string wf_arraytostring (readonly str_dataexppart astr_value[]);long ll_count,ll_i
string ls_value
//dwcontrol.Object. data [startrow,startcol, endrow, endcol]
//lstr_block = dw_1.object.data[1,2,2,4]
ll_count = UpperBound(astr_value[])

//MessageBox("wf_arraytostring_3",String(astr_value[1]))

for ll_i = 1 to ll_count
	if IsNull(astr_value[ll_i].salary) then
		ls_value += 'null'
	else
		ls_value += string(astr_value[ll_i].salary)
	end if
	
	if IsNull(astr_value[ll_i].start_date) then
		ls_value += 'null'
	else
		ls_value += string(astr_value[ll_i].start_date)
	end if
	
	if IsNull(astr_value[ll_i].mytime) then
		ls_value += 'null'
	else
		ls_value += string(astr_value[ll_i].mytime)
	end if
	
next
//MessageBox("wf_arraytostring_3",ls_value)
return ls_value
end function

public function string wf_arraytostring (readonly any aa_value[]);long ll_count,ll_i
string ls_value

ll_count = UpperBound(aa_value[])

for ll_i = 1 to ll_count
	if IsNull(aa_value[ll_i]) then
		ls_value += 'null'
	else
		ls_value += string(aa_value[ll_i])
	end if
next
return ls_value
end function

public subroutine wf_syntax6 ();//syntax6:dwcontrol.Object.Data{.buffer}{.datasource}{[rownum]}
str_dataexpall	lstr_block[],lstr_row,lstr_null[]
string ls_OriValue,ls_CurValue
long ll_i

dw_1.DataObject = 'd_dwdataaccess'
dw_1.SetTransobject(sqlca)
dw_1.Retrieve()
dw_2.Reset()
//Delete
dw_1.DeleteRow(1)
dw_1.DeleteRow(1)
dw_1.DeleteRow(1)
dw_1.DeleteRow(1)
dw_1.DeleteRow(1)

for ll_i = 1 to dw_1.DeletedCount()
	dw_1.object.emp_id.delete[ll_i] = 4000
next

//Filter
dw_1.SetFilter("emp_id > 800")
dw_1.Filter()
for ll_i = 1 to dw_1.FilteredCount()
	dw_1.object.emp_id.filter[ll_i] = 5000
next

//primary
for ll_i = 1 to 10
	dw_1.SetItem(ll_i,'emp_id',6000)
next


//dwcontrol.Object. data
lstr_block = dw_1.object.data
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.RowCount(),1,4,primary!,false)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data")

dw_2.object.data = lstr_block
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.RowCount(),1,4,primary!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data")

//dwcontrol.Object. data []
lstr_block = dw_1.object.data[]
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.RowCount(),1,4,primary!,false)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data[]")

dw_2.object.data[] = lstr_block
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.RowCount(),1,4,primary!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data[]")

//dwcontrol.Object. data [rownum]
lstr_row = dw_1.object.data[1]
ls_OriValue = wf_GetValueString(dw_1,1,1,1,4,primary!,false)
lstr_block = lstr_null
lstr_block[1] = lstr_row
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data[1]")

dw_2.object.data[1] = lstr_row
ls_OriValue = wf_GetValueString(dw_2,1,1,1,4,primary!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data[1]")

//
//dwcontrol.Object. data.current 
lstr_block = dw_1.object.data.current
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.RowCount(),1,4,primary!,false)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.current")

dw_2.object.data.current = lstr_block
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.RowCount(),1,4,primary!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data.current")
//dwcontrol.Object. data.current []
lstr_block = dw_1.object.data.current[]
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.RowCount(),1,4,primary!,false)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.current[]")

dw_2.object.data.current[] = lstr_block
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.RowCount(),1,4,primary!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data.current[]")

//dwcontrol.Object. data.current [rownum]
//×¢PBÖÐÊÇ·µ»ØÊý×é£¬²»ÖªÎªÊ²Ã´£¿
lstr_block = dw_1.object.data.current[1]
ls_OriValue = wf_GetValueString(dw_1,1,1,1,4,primary!,false)
//lstr_block = lstr_null
//lstr_block[1] = lstr_row
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.current[1]")

dw_2.object.data.current[1] = lstr_block
ls_OriValue = wf_GetValueString(dw_2,1,1,1,4,primary!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data.current[1]")


//dwcontrol.Object. data.original 
lstr_block = dw_1.object.data.original
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.RowCount(),1,4,primary!,true)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.original")

dw_2.object.data.original = lstr_block
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.RowCount(),1,4,primary!,true)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data.original")

//dwcontrol.Object. data.original []
lstr_block = dw_1.object.data.original[]
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.RowCount(),1,4,primary!,true)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.original[]")

dw_2.object.data.original[] = lstr_block
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.RowCount(),1,4,primary!,true)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data.original[]")

//dwcontrol.Object. data.original [rownum]
lstr_block = dw_1.object.data.original[1]
ls_OriValue = wf_GetValueString(dw_1,1,1,1,4,primary!,true)
//lstr_block = lstr_null
//lstr_block[1] = lstr_row
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.original[1]")

dw_2.object.data.original[1] = lstr_block
ls_OriValue = wf_GetValueString(dw_2,1,1,1,4,primary!,true)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data.original[1]")


//dwcontrol.Object. data.primary
lstr_block = dw_1.object.data.primary
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.RowCount(),1,4,primary!,false)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.primary")

dw_2.object.data.primary = lstr_block
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.RowCount(),1,4,primary!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data.primary")

//dwcontrol.Object. data.primary[]
lstr_block = dw_1.object.data.primary[]
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.RowCount(),1,4,primary!,false)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.primary[]")

dw_2.object.data.primary[] = lstr_block
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.RowCount(),1,4,primary!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data.primary[]")

//dwcontrol.Object. data.primary[rownum]
//×¢PBÖÐÊÇ·µ»ØÊý×é£¬²»ÖªÎªÊ²Ã´£¿
//lstr_row = dw_1.object.data.primary[1]
lstr_block = dw_1.object.data.primary[1]
ls_OriValue = wf_GetValueString(dw_1,1,1,1,4,primary!,false)
//lstr_block = lstr_null
//lstr_block[1] = lstr_row
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.primary[1]")

dw_2.object.data.primary[1] = lstr_block
ls_OriValue = wf_GetValueString(dw_2,1,1,1,4,primary!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data.primary[1]")


//dwcontrol.Object. data.primary.current
lstr_block = dw_1.object.data.primary.current
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.RowCount(),1,4,primary!,false)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.primary.current")

dw_2.object.data.primary.current = lstr_block
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.RowCount(),1,4,primary!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data.primary.current")

//dwcontrol.Object. data.primary.current []
lstr_block = dw_1.object.data.primary.current[]
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.RowCount(),1,4,primary!,false)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.primary.current[]")

dw_2.object.data.primary.current[] = lstr_block
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.RowCount(),1,4,primary!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data.primary.current[]")

//dwcontrol.Object. data.primary.current [rownum]
lstr_block = dw_1.object.data.primary.current[1]
ls_OriValue = wf_GetValueString(dw_1,1,1,1,4,primary!,false)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.primary.current[1]")

dw_2.object.data.primary.current[1] = lstr_block
ls_OriValue = wf_GetValueString(dw_2,1,1,1,4,primary!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data.primary.current[1]")


//dwcontrol.Object. data.primary.original 
lstr_block = dw_1.object.data.primary.original
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.RowCount(),1,4,primary!,true)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.primary.original")

dw_2.object.data.primary.original = lstr_block
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.RowCount(),1,4,primary!,true)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data.primary.original")

//dwcontrol.Object. data.primary.original []
lstr_block = dw_1.object.data.primary.original[]
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.RowCount(),1,4,primary!,true)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.primary.original[]")

dw_2.object.data.primary.original[] = lstr_block
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.RowCount(),1,4,primary!,true)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data.primary.original[]")
//dwcontrol.Object. data.primary.original [rownum]
lstr_block = dw_1.object.data.primary.original[1]
ls_OriValue = wf_GetValueString(dw_1,1,1,1,4,primary!,true)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.primary.original[1]")

dw_2.object.data.primary.original[1] = lstr_block
ls_OriValue = wf_GetValueString(dw_2,1,1,1,4,primary!,true)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data.primary.original[1]")

//dwcontrol.Object. data.delete 
lstr_block = dw_1.object.data.delete
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.DeletedCount(),1,4,delete!,false)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.delete")

dw_2.object.data.delete = lstr_block
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.DeletedCount(),1,4,delete!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data.delete")

//dwcontrol.Object. data.delete []
lstr_block = dw_1.object.data.delete[]
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.DeletedCount(),1,4,delete!,false)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.delete[]")

dw_2.object.data.delete[] = lstr_block
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.DeletedCount(),1,4,delete!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data.delete[]")

//dwcontrol.Object. data.delete [rownum]
lstr_block = dw_1.object.data.delete[1]
ls_OriValue = wf_GetValueString(dw_1,1,1,1,4,delete!,false)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.delete[1]")

dw_2.object.data.delete[1] = lstr_block
ls_OriValue = wf_GetValueString(dw_2,1,1,1,4,delete!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data.delete[1]")


//dwcontrol.Object. data. delete.current 
lstr_block = dw_1.object.data.delete.current
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.DeletedCount(),1,4,delete!,false)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.delete.current")

dw_2.object.data.delete.current = lstr_block
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.DeletedCount(),1,4,delete!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data.delete.current")

//dwcontrol.Object. data. delete.current []
lstr_block = dw_1.object.data.delete.current[]
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.DeletedCount(),1,4,delete!,false)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.delete.current[]")

dw_2.object.data.delete.current[] = lstr_block
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.DeletedCount(),1,4,delete!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data.delete.current[]")


//dwcontrol.Object. data. delete.current [rownum]
lstr_block = dw_1.object.data.delete.current[1]
ls_OriValue = wf_GetValueString(dw_1,1,1,1,4,delete!,false)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.delete.current[1]")

dw_2.object.data.delete.current[1] = lstr_block
ls_OriValue = wf_GetValueString(dw_2,1,1,1,4,delete!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data.delete.current[1]")

//dwcontrol.Object. data. delete.original 
lstr_block = dw_1.object.data.delete.original
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.DeletedCount(),1,4,delete!,true)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.delete.original")

dw_2.object.data.delete.original = lstr_block
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.DeletedCount(),1,4,delete!,true)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data.delete.original")

//dwcontrol.Object. data. delete.original []
lstr_block = dw_1.object.data.delete.original[]
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.DeletedCount(),1,4,delete!,true)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.delete.original[]")

dw_2.object.data.delete.original[] = lstr_block
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.DeletedCount(),1,4,delete!,true)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data.delete.original[]")

//dwcontrol.Object. data. delete.original [rownum]
lstr_block = dw_1.object.data.delete.original[1]
ls_OriValue = wf_GetValueString(dw_1,1,1,1,4,delete!,true)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.delete.original[1]")

dw_2.object.data.delete.original[1] = lstr_block
ls_OriValue = wf_GetValueString(dw_2,1,1,1,4,delete!,true)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data.delete.original[1]")


//dwcontrol.Object. data.filter 
lstr_block = dw_1.object.data.filter
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.filteredCount(),1,4,filter!,false)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.filter")

dw_2.object.data.filter = lstr_block
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.filteredCount(),1,4,filter!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data.filter")

//dwcontrol.Object. data.filter []
lstr_block = dw_1.object.data.filter[]
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.filteredCount(),1,4,filter!,false)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.filter[]")

dw_2.object.data.filter[] = lstr_block
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.filteredCount(),1,4,filter!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data.filter[]")

//dwcontrol.Object. data.filter [rownum]
lstr_block = dw_1.object.data.filter[1]
ls_OriValue = wf_GetValueString(dw_1,1,1,1,4,filter!,false)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.filter[1]")

dw_2.object.data.filter[1] = lstr_block
ls_OriValue = wf_GetValueString(dw_2,1,1,1,4,filter!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data.filter[1]")


//dwcontrol.Object. data. filter.current 
lstr_block = dw_1.object.data.filter.current
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.filteredCount(),1,4,filter!,false)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.filter.current")

dw_2.object.data.filter.current = lstr_block
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.filteredCount(),1,4,filter!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data.filter.current")

//dwcontrol.Object. data. filter.current []
lstr_block = dw_1.object.data.filter.current[]
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.filteredCount(),1,4,filter!,false)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.filter.current[]")

dw_2.object.data.filter.current[] = lstr_block
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.filteredCount(),1,4,filter!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data.filter.current[]")


//dwcontrol.Object. data. filter.current [rownum]
lstr_block = dw_1.object.data.filter.current[1]
ls_OriValue = wf_GetValueString(dw_1,1,1,1,4,filter!,false)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.filter.current[1]")

dw_2.object.data.filter.current[1] = lstr_block
ls_OriValue = wf_GetValueString(dw_2,1,1,1,4,filter!,false)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data.filter.current[1]")

//dwcontrol.Object. data. filter.original 
lstr_block = dw_1.object.data.filter.original
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.filteredCount(),1,4,filter!,true)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.filter.original")

dw_2.object.data.filter.original = lstr_block
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.filteredCount(),1,4,filter!,true)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data.filter.original")

//dwcontrol.Object. data. filter.original []
lstr_block = dw_1.object.data.filter.original[]
ls_OriValue = wf_GetValueString(dw_1,1,dw_1.filteredCount(),1,4,filter!,true)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.filter.original[]")

dw_2.object.data.filter.original[] = lstr_block
ls_OriValue = wf_GetValueString(dw_2,1,dw_2.filteredCount(),1,4,filter!,true)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data.filter.original[]")

//dwcontrol.Object. data. filter.original [rownum]
lstr_block = dw_1.object.data.filter.original[1]
ls_OriValue = wf_GetValueString(dw_1,1,1,1,4,filter!,true)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.filter.original[1]")

dw_2.object.data.filter.original[1] = lstr_block
ls_OriValue = wf_GetValueString(dw_2,1,1,1,4,filter!,true)
wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data.filter.original[1]")


end subroutine

public subroutine wf_syntax7 ();//syntax7:dwcontrol.Object.Data{.Primary}{.datasource}.Selected
str_dataexpall	lstr_block[],lstr_null[]
string ls_OriValue,ls_CurValue
long ll_i

dw_1.DataObject = 'd_dwdataaccess'
dw_1.SetTransobject(sqlca)
dw_1.Retrieve()
dw_2.SetTransObject(sqlca)
dw_2.Reset()

for ll_i = 1 to 3
	dw_1.SetItem(ll_i,'emp_id',5000)
	dw_1.SelectRow(ll_i,true)
next

for ll_i = 1 to 20
	dw_2.Insertrow(0)
next

//dwcontrol.Object. Data.Selected
lstr_block = dw_1.object.data.selected
ls_OriValue = wf_GetValueString(dw_1,1,3,1,4,primary!,false)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.selected")

//for ll_i = 1 to 3
//	dw_2.Selectrow(ll_i,true)
//next
//dw_2.object.data.selected = lstr_block
//ls_OriValue = wf_GetValueString(dw_2,1,3,1,4,primary!,false)
//wf_output(ls_CurValue,ls_OriValue,"Set:dwcontrol.Object. data.selected")

//dwcontrol.Object. Data.primary .Selected
//lstr_block = dw_1.object.data.primary.selected
//ls_OriValue = wf_GetValueString(dw_1,1,3,1,4,primary!,false)
//ls_CurValue = wf_ArrayToString(lstr_block)
//wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.primary.selected")

//dwcontrol.Object. Data.current.Selected
dw_1.SelectRow(0,false)
for ll_i = 4 to 6
	dw_1.SelectRow(ll_i,true)
next
lstr_block = dw_1.object.data.current.selected
ls_OriValue = wf_GetValueString(dw_1,4,6,1,4,primary!,false)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.current.selected")

//dwcontrol.Object. Data.Primary.current.Selected
//dw_1.SelectRow(0,false)
//for ll_i = 7 to 10
//	dw_1.SelectRow(ll_i,true)
//next
//lstr_block = dw_1.object.data.primary.current.selected
//ls_OriValue = wf_GetValueString(dw_1,7,10,1,4,primary!,false)
//ls_CurValue = wf_ArrayToString(lstr_block)
//wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.primary.current.selected")

//dwcontrol.Object. Data.original.Selected
dw_1.SelectRow(0,false)
for ll_i = 11 to 13
	dw_1.SelectRow(ll_i,true)
next
lstr_block = dw_1.object.data.original.selected
ls_OriValue = wf_GetValueString(dw_1,11,13,1,4,primary!,true)
ls_CurValue = wf_ArrayToString(lstr_block)
wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.original.selected")

//dwcontrol.Object. Data.Primary. original.Selected
//dw_1.SelectRow(0,false)
//for ll_i = 14 to 16
//	dw_1.SelectRow(ll_i,true)
//next
//lstr_block = dw_1.object.data.Primary.original.selected
//ls_OriValue = wf_GetValueString(dw_1,14,16,1,4,primary!,true)
//ls_CurValue = wf_ArrayToString(lstr_block)
//wf_output(ls_OriValue,ls_CurValue,"Get:dwcontrol.Object. data.Primary.original.selected")


end subroutine

public function string wf_arraytostring (readonly str_dataexpall astr_value[]);long ll_count,ll_i
string ls_value
//dwcontrol.Object. data [startrow,startcol, endrow, endcol]
//lstr_block = dw_1.object.data[1,2,2,4]
ll_count = UpperBound(astr_value[])

for ll_i = 1 to ll_count
	//Messagebox("aa_value[ll_i]","wf_arraytostring:" + "~r~n" + string(astr_value[ll_i].emp_id))
	if IsNull(astr_value[ll_i].emp_id) then
		ls_value += 'null'
	else
		ls_value += string(astr_value[ll_i].emp_id)
	end if
	
	if IsNull(astr_value[ll_i].salary) then
		ls_value += 'null'
	else
		ls_value += string(astr_value[ll_i].salary)
	end if
	
	if IsNull(astr_value[ll_i].start_date) then
		ls_value += 'null'
	else
		ls_value += string(astr_value[ll_i].start_date)
	end if
	
	if IsNull(astr_value[ll_i].mytime) then
		ls_value += 'null'
	else
		ls_value += string(astr_value[ll_i].mytime)
	end if
	
next
return ls_value
end function

public subroutine wf_dotoperate (boolean ab_save);/*µã²Ù×÷ÓëOriginal,CurrentÐÞ¸Ä¹ØÏµ£º
1.	Primary buffer
	New:
	NewModified:
	NotModified:
	DataModified:
	·Ö±ðÐÞ¸ÄÒÔÉÏ×´Ì¬ÏÂÁÐµÄCurrent and Original value,²é¿´ÐÞ¸ÄºóCurrent and Original value
	µÄ±ä»¯
	
2.	Delete buffer
	NotModified:
	DataModified:
	ÐÞ¸Äcurrent,original£¬µ«¶ÔÓÚDataModified×´Ì¬ÐÐ£¬ÐÞ¸ÄoriginalºóPBÖÐ»á³ö´í£¬Ó¦ÊÇPBµÄBUG¡£
3.	Filter buffer
	New:
	NewModified:
	NotModified:
	DataModified:·Ö±ðÐÞ¸ÄÒÔÉÏ×´Ì¬ÏÂÁÐµÄCurrent and Original value,²é¿´ÐÞ¸ÄºóCurrent and 
	Original valueµÄ±ä»¯
*/
//2003-11-04 Ôö¼Ó
//1.	ÐÞ¸ÄÖµ¶ÔÐÐÁÐ×´Ì¬µÄÓ°Ïì
//2.	ÐÞ¸ÄÁÐÎªNULLµ½Not NULL»òÕßÐÞ¸ÄÁÐÎªNot NULLµ½NULL,¸÷ÖÖÐÐÁÐ×´Ì¬ÏÂÐÞ¸Ä£¬²é¿´current,value
//		±ä»¯ÓëÐÐÁÐ×´Ì¬±ä»¯
//3.	ÐÞ¸ÄÐÐÁÐ×´Ì¬¶ÔCurrent,OrigianlµÄÓ°Ïì


/*zhushaobin 2005-02-05 ¹²×¢ÊÍÁ½´¦
µÚ008¸ö²âÊÔµã£º¶ÔÉ¾³ý»º³åÇøµÄÁÐÉèÖÃÔ­Ê¼ÖµÊ±£¬pbÈ¡³öµÄÁÐ×´Ì¬ÎªNotModified£¬¶øÎÒÃÇÈ¡³öµÄÎªDataModified¡£
 
Ô­Òò£ºÈç¹ûpb¶ÔÖ÷»º³åÇøµÄÁÐÉèÖÃÔ­Ê¼ÖµÊ±£¬È¡³öµÄÁÐ×´Ì¬ÎªDataModified£¬ÓëÎÒÃÇµÄÒ»ÖÂ£»µ«É¾³ý»º³åÇøpb×öÁËÌØÊâ´¦Àí£¬
¶øÎÒÃÇÃ»ÓÐ¡£
 
¶ÔÕâÀà²âÊÔµã£¬ÓÃ»§Ò»°ãºÜÉÙÕâÑùÐ´£¬½¨Òé²»Ö§³Ö£¬ÐÞ¸Ä²âÊÔ°¸Àý¡£
*/

string ls_result
string ls_buffer
long ll_row
string ls_null

SetNull(ls_null)

dw_1.dataobject = 'd_dotoperate'
dw_1.SetTransObject(sqlca)
dw_1.Retrieve()


//primary buffer
//Row(NotModified),Col(NotModified),MCur value
dw_1.object.emp_fname.current[1] = "MCur"
wf_RunOrSave(ab_save,1,'emp_fname',primary!,"current","Row(NotModified),Col(NotModified)",2801)
//Row(NotModified),Col(NotModified),MOri value
dw_1.object.emp_fname.Original[2] = "MOri"
wf_RunOrSave(ab_save,2,'emp_fname',primary!,"Original","Row(NotModified),Col(NotModified)",2802)

//Row(DataModified),Col(NotModified),Modify Original value
dw_1.SetItem(3,'emp_id',4000)
dw_1.object.emp_fname.original[3] = "MOri"
wf_RunOrSave(ab_save,3,'emp_fname',primary!,"Original","Row(DataModified),Col(NotModified)",2803)

//Row(DataModified),Col(DataModified),Modify Original value
dw_1.SetItem(4,'emp_fname',"Modified")
dw_1.object.emp_fname.original[4] = "MOri"
wf_RunOrSave(ab_save,4,'emp_fname',primary!,"Original","Row(DataModified),Col(DataModified)",2804)

//Row(DataModified),Col(NotModified),Modify Current value
dw_1.SetItem(5,'emp_id',4000)
dw_1.object.emp_fname.Current[5] = "MCur"
wf_RunOrSave(ab_save,5,'emp_fname',primary!,"Current","Row(DataModified),Col(NotModified)",2805)

//Row(DataModified),Col(DataModified),Modify Current value
dw_1.SetItem(6,'emp_fname',"Modified")
dw_1.object.emp_fname.Current[6] = "MCur"
wf_RunOrSave(ab_save,6,'emp_fname',primary!,"Current","Row(DataModified),Col(DataModified)",2806)


//Row(New),Col(NotModified),Modify Current Value
ll_row = dw_1.InsertRow(0)
dw_1.Object.emp_fname.Current[ll_row] = "New current"
wf_RunOrSave(ab_save,ll_row,'emp_fname',primary!,"Current","Row(New),Col(NotModified)",2807)

//Row(New),Col(NotModified),Modify Original Value
ll_row = dw_1.InsertRow(0)
dw_1.Object.emp_fname.Original[ll_row] = "New Original"

wf_RunOrSave(ab_save,ll_row,'emp_fname',primary!,"Original","Row(New),Col(NotModified)",2808)

//Row(NewModified),Col(NotModified),Modify Original Value
ll_row = dw_1.InsertRow(0)
dw_1.SetItem(ll_row,'emp_id',4000)
dw_1.Object.emp_fname.Original[ll_row] = "MOri"
wf_RunOrSave(ab_save,ll_row,'emp_fname',primary!,"Original","Row(NewModified),Col(NotModified)",2809)

//Row(NewModified),Col(DataModified),Modify Original Value
ll_row = dw_1.InsertRow(0)
dw_1.SetItem(ll_row,'emp_fname',"Modified")
dw_1.Object.emp_fname.Original[ll_row] = "MOri"
wf_RunOrSave(ab_save,ll_row,'emp_fname',primary!,"Original","Row(NewModified),Col(DataModified)",2810)

//Row(NewModified),Col(NotModified),Modify Current Value
ll_row = dw_1.InsertRow(0)
dw_1.SetItem(ll_row,'emp_id',4000)
dw_1.Object.emp_fname.Current[ll_row] = "MCur"
wf_RunOrSave(ab_save,ll_row,'emp_fname',primary!,"Current","Row(NewModified),Col(NotModified)",2811)

//Row(NewModified),Col(DataModified),Modify Current Value
ll_row = dw_1.InsertRow(0)
dw_1.SetItem(ll_row,'emp_fname',"Modified")
dw_1.Object.emp_fname.Current[ll_row] = "MCur"
wf_RunOrSave(ab_save,ll_row,'emp_fname',primary!,"Current","Row(NewModified),Col(DataModified)",2812)


//delete buffer
dw_1.dataobject = 'd_dotoperate'
dw_1.SetTransObject(sqlca)
dw_1.Retrieve()

//Row(NotModified),Col(NotModified),Modify current value
//dw_1.DeleteRow(1)
//dwitemstatus lds
//lds = dw_1.GetItemStatus(1,0,delete!)
dw_1.RowsMove(1,1,primary!,dw_1,1,delete!)

dw_1.object.emp_fname.delete.current[1] = "MCur"
wf_RunOrSave(ab_save,1,'emp_fname',delete!,"current","Row(NotModified),Col(NotModified)",2821)

//Row(NotModified),Col(NotModified),Modify Original value
dw_1.Retrieve()
//dw_1.DeleteRow(1)
dw_1.RowsMove(1,1,primary!,dw_1,1,delete!)

dw_1.object.emp_fname.delete.Original[1] = "MOri"
wf_RunOrSave(ab_save,1,'emp_fname',delete!,"Original","Row(NotModified),Col(NotModified)",2822)

//Row(DataModified),Col(NotModified),Modify current value
dw_1.retrieve()
dw_1.SetItem(1,'emp_id',4000)
//dw_1.DeleteRow(1)
dw_1.RowsMove(1,1,primary!,dw_1,1,delete!)
dw_1.object.emp_fname.delete.current[1] = "MCur"
wf_RunOrSave(ab_save,1,'emp_fname',delete!,"current","Row(DataModified),Col(NotModified)",2823)

//Row(DataModified),Col(DataModified),Modify current value
dw_1.ResetUpdate()
dw_1.SetItem(1,'emp_fname',"Modified")
//dw_1.DeleteRow(1)
dw_1.RowsMove(1,1,primary!,dw_1,1,delete!)
dw_1.object.emp_fname.delete.current[1] = "MCur"
wf_RunOrSave(ab_save,1,'emp_fname',delete!,"current","Row(DataModified),Col(DataModified)",2824)




////Row(DataModified),Col(NotModified),Modify Original value
//dw_1.ResetUpdate()
//dw_1.SetItem(1,'emp_id',4000)
////dw_1.DeleteRow(1)
//dw_1.RowsMove(1,1,primary!,dw_1,1,delete!)
//dw_1.object.emp_fname.delete.Original[1] = "MOri"
//wf_RunOrSave(ab_save,1,'emp_fname',delete!,"Original","Row(DataModified),Col(NotModified)",2825)

//Row(DataModified),Col(DataModified),Modify Original value
dw_1.Retrieve()
dw_1.SetItem(1,'emp_fname',"Modified")
//dw_1.DeleteRow(1)
//dw_1.object.emp_fname[1] = "Modified"
dw_1.RowsMove(1,1,primary!,dw_1,1,delete!)

dw_1.object.emp_fname.delete.Original[1] = "MOri"
//messagebox('',string(dw_1.object.emp_fname.delete.Original[1]))
wf_RunOrSave(ab_save,1,'emp_fname',delete!,"Original","Row(DataModified),Col(DataModified)",2826)



//Filter »º³åÇø
dw_1.dataobject = 'd_dotoperate'
dw_1.SetTransObject(sqlca)
dw_1.Retrieve()
//Row(NotModified),Col(NotModified),MCur value
dw_1.SetFilter("emp_id <> 195")
dw_1.Filter()

dw_1.object.emp_fname.filter.current[1] = "MCur"
wf_RunOrSave(ab_save,1,'emp_fname',filter!,"current","Row(NotModified),Col(NotModified)",2841)

//Row(NotModified),Col(NotModified),MOri value
dw_1.SetFilter("emp_id <> 243")
dw_1.Filter()

dw_1.object.emp_fname.filter.Original[1] = "MOri"
wf_RunOrSave(ab_save,1,'emp_fname',filter!,"Original","Row(NotModified),Col(NotModified)",2842)

////Row(DataModified),Col(NotModified),Modify Original value
//ll_row = dw_1.Find("emp_id = 249",1,50)
//dw_1.SetItem(ll_row,'emp_id',2000)
//dw_1.SetFilter("emp_id <> 2000")
//dw_1.Filter()
//dw_1.object.emp_fname.filter.original[1] = "MOri"
//wf_RunOrSave(ab_save,1,'emp_fname',filter!,"Original","Row(DataModified),Col(NotModified)",2843)

//Row(DataModified),Col(DataModified),Modify Original value
ll_row = dw_1.Find("emp_id = 278",1,50)
dw_1.SetItem(ll_row,'emp_fname',"Modified")
dw_1.SetFilter("emp_id <> 278")
dw_1.Filter()
dw_1.object.emp_fname.filter.original[1] = "MOri"
wf_RunOrSave(ab_save,1,'emp_fname',filter!,"Original","Row(DataModified),Col(DataModified)",2844)

//Row(DataModified),Col(NotModified),Modify Current value
ll_row = dw_1.Find("emp_id = 316",1,50)
dw_1.SetItem(ll_row,'emp_id',2001)
dw_1.SetFilter("emp_id <> 2001")
dw_1.Filter()

dw_1.object.emp_fname.filter.Current[1] = "MCur"
wf_RunOrSave(ab_save,1,'emp_fname',filter!,"Current","Row(DataModified),Col(NotModified)",2845)

//Row(DataModified),Col(DataModified),Modify Current value
ll_row = dw_1.Find("emp_id = 390",1,50)
dw_1.SetItem(ll_row,'emp_fname',"Modified")
dw_1.SetFilter("emp_id <> 390")
dw_1.Filter()
dw_1.object.emp_fname.filter.Current[1] = "MCur"
wf_RunOrSave(ab_save,1,'emp_fname',filter!,"Current","Row(DataModified),Col(DataModified)",2846)


////Row(New),Col(NotModified),Modify Current Value
dw_1.SetFilter("")
dw_1.Filter()
ll_row = dw_1.InsertRow(0)
dw_1.RowsMove(ll_row,ll_row,primary!,dw_1,1,Filter!)

dw_1.Object.emp_fname.filter.Current[1] = "New current"
wf_RunOrSave(ab_save,1,'emp_fname',filter!,"Current","Row(New),Col(NotModified)",2847)

////Row(New),Col(NotModified),Modify Original Value
dw_1.SetFilter("")
dw_1.Filter()
ll_row = dw_1.InsertRow(0)
dw_1.RowsMove(ll_row,ll_row,primary!,dw_1,1,Filter!)
dw_1.Object.emp_fname.filter.Original[1] = "New Original"
wf_RunOrSave(ab_save,1,'emp_fname',filter!,"Original","Row(New),Col(NotModified)",2848)

//Row(NewModified),Col(NotModified),Modify Original Value
ll_row = dw_1.InsertRow(0)
dw_1.SetItem(ll_row,'emp_id',4000)
dw_1.SetFilter("emp_id <> 4000 or isnull(emp_id) ")
dw_1.Filter()

dw_1.Object.emp_fname.filter.Original[1] = "MOri"
wf_RunOrSave(ab_save,1,'emp_fname',filter!,"Original","Row(NewModified),Col(NotModified)",2849)

//Row(NewModified),Col(DataModified),Modify Original Value
ll_row = dw_1.InsertRow(0)
dw_1.SetItem(ll_row,'emp_id',4001)
dw_1.SetItem(ll_row,'emp_fname',"Modified")

dw_1.SetFilter("emp_id <> 4001 or isnull(emp_id) ")
dw_1.Filter()

dw_1.Object.emp_fname.filter.Original[1] = "MOri"
//messagebox(dw_1.GetItemString(1,'emp_fname',filter!,true),string(dw_1.object.emp_fname.filter.original[1]))
//messagebox('',string(dw_1.object.emp_fname.filter.current[1]))
wf_RunOrSave(ab_save,1,'emp_fname',filter!,"Original","Row(NewModified),Col(DataModified)",2850)

//Row(NewModified),Col(NotModified),Modify Current Value
ll_row = dw_1.InsertRow(0)
dw_1.SetItem(ll_row,'emp_id',4002)
dw_1.SetFilter("emp_id <> 4002 or isnull(emp_id) ")
dw_1.Filter()

dw_1.Object.emp_fname.filter.Current[1] = "MCur"
wf_RunOrSave(ab_save,1,'emp_fname',filter!,"Current","Row(NewModified),Col(NotModified)",2851)

//Row(NewModified),Col(DataModified),Modify Current Value
ll_row = dw_1.InsertRow(0)
dw_1.SetItem(ll_row,'emp_id',4003)
dw_1.SetItem(ll_row,'emp_fname',"Modified")


dw_1.SetFilter("emp_id <> 4003 or isnull(emp_id) ")
dw_1.Filter()
dw_1.Object.emp_fname.filter.Current[1] = "MCur"
wf_RunOrSave(ab_save,1,'emp_fname',filter!,"Current","Row(NewModified),Col(DataModified)",2852)

end subroutine

public subroutine wf_runorsave (boolean ab_save, long al_row, string as_col, dwbuffer adw_buffer, string as_source, string as_status, integer ai_flag);string ls_current,ls_original,ls_result,ls_OldResult
string ls_flag,ls_value,ls_RowState,ls_ColState
dwitemstatus ldwi_status

ls_flag = "DataAndbuffer"
ls_value = as_status

if as_col = 'emp_fname' then 
	ls_original = dw_1.GetItemString(al_row,'emp_fname',adw_buffer,true)
	ls_current = dw_1.GetItemString(al_row,'emp_fname',adw_buffer,false)
	//ls_original = dw_1.object.emp_fname.original[al_row]
	//ls_current = dw_1.object.emp_fname.current[al_row]
elseif as_col = 'phone' then
	ls_original = dw_1.GetItemString(al_row,'phone',adw_buffer,true)
	ls_current = dw_1.GetItemString(al_row,'phone',adw_buffer,false)
	//ls_original = dw_1.object.phone.original[al_row]
	//ls_current = dw_1.object.phone.current[al_row]
end if
		
choose case adw_buffer
	case Primary!
		ls_value += ",Buffer:Primary"
	case Delete!
		ls_value += ",Buffer:Delete"
	case Filter!
		ls_value += ",Buffer:Filter"
end choose

ls_value +=",DataSource:"+as_source
if isnull(ls_current) then ls_current = 'null'
if isnull(ls_original) then ls_original = 'null'
ldwi_status = dw_1.GetItemStatus(al_row,0,adw_buffer)
choose case ldwi_status 
	case New!
		ls_RowState = 'New'
	case NewModified!
		ls_RowState = 'NewModified'
	case NotModified!
		ls_RowState = 'NotModified'
	case DataModified!
		ls_RowState = 'DataModified'
end choose

ldwi_status = dw_1.GetItemStatus(al_row,as_col,adw_buffer)
choose case ldwi_status 
	case New!
		ls_ColState = 'New'
	case NewModified!
		ls_ColState = 'NewModified'
	case NotModified!
		ls_ColState = 'NotModified'
	case DataModified!
		ls_ColState = 'DataModified'
end choose

ls_result = "Cur("+ls_Current+"),Ori("+ls_original+"),RowState("+ls_RowState+"),ColState("+ls_ColState+")"



//±£´æÊý¾Ý
if ab_save then
	Delete exp_fun where value = :ls_value and row = :ai_flag and flag = :ls_flag;
	insert into exp_fun(value,result,row,flag) values(:ls_value,:ls_result,:ai_flag,:ls_flag);
	
//±È½ÏÊý¾Ý
else
	select result into :ls_OldResult from exp_fun where flag = :ls_flag and row = :ai_flag and value = :ls_value;
	if (sqlca.sqlcode = 100 or sqlca.sqlcode < 0 ) then ls_oldresult = 'error'
	wf_output(ls_oldresult,ls_result,ls_value)
end if




	
end subroutine

public subroutine wf_dotoperatortonull (boolean ab_save);/*µã²Ù×÷ÓëOriginal,CurrentÐÞ¸Ä¹ØÏµ£º
1.	Primary buffer
	New:
	NewModified:
	NotModified:
	DataModified:
	·Ö±ðÐÞ¸ÄÒÔÉÏ×´Ì¬ÏÂÁÐµÄCurrent and Original value,²é¿´ÐÞ¸ÄºóCurrent and Original value
	µÄ±ä»¯
	
2.	Delete buffer
	NotModified:
	DataModified:
	ÐÞ¸Äcurrent,original£¬µ«¶ÔÓÚDataModified×´Ì¬ÐÐ£¬ÐÞ¸ÄoriginalºóPBÖÐ»á³ö´í£¬Ó¦ÊÇPBµÄBUG¡£
3.	Filter buffer
	New:
	NewModified:
	NotModified:
	DataModified:·Ö±ðÐÞ¸ÄÒÔÉÏ×´Ì¬ÏÂÁÐµÄCurrent and Original value,²é¿´ÐÞ¸ÄºóCurrent and 
	Original valueµÄ±ä»¯
*/
//2003-11-04 Ôö¼Ó
//1.	ÐÞ¸ÄÖµ¶ÔÐÐÁÐ×´Ì¬µÄÓ°Ïì
//2.	ÐÞ¸ÄÁÐÎªNULLµ½Not NULL»òÕßÐÞ¸ÄÁÐÎªNot NULLµ½NULL,¸÷ÖÖÐÐÁÐ×´Ì¬ÏÂÐÞ¸Ä£¬²é¿´current,value
//		±ä»¯ÓëÐÐÁÐ×´Ì¬±ä»¯
//3.	ÐÞ¸ÄÐÐÁÐ×´Ì¬¶ÔCurrent,OrigianlµÄÓ°Ïì

/*zhushaobin 2005-2-1 ²»Ö§³Ö
Ò»°ãÇé¿öÏÂ£¬Èç¹û²åÈë3¸ö¿ÕÐÐ£¬ÓÃµã²Ù×÷¶ÔÔ­Ê¼»º³åÇø¸³Öµ£¬ÔÙ·Ö±ð¶ÔÔ­Ê¼»º³åÇøºÍÖ÷»º³åÇøÈ¡Öµ£¬webºÍpbÖÐ±£³ÖÒ»ÖÂ£¬
¶¼ÄÜÈ¡³öÖµ¡£´úÂëÈçÏÂ£º
dw_1.settransobject(sqlca)
dw_1.insertrow(0)
dw_1.object.phone.original[2] = "12"
dw_1.GetItemstring(2,'phone',primary!,true) //µÃµ½12
dw_1.GetItemstring(2,'phone',primary!,false) //µÃµ½12

µ«£¬Èç¹ûÔÚ×öµã²Ù×÷Ç°½øÐÐÁËsetitem²Ù×÷£¬ÄÇÃ´pbµÄÖ÷»º³åÇøÈ¡²»µ½Êý¾Ý£¬¶øÎÒÃÇÄÜÈ¡µ½¡£
´úÂëÈçÏÂ£º
dw_1.settransobject(sqlca)
dw_1.insertrow(0)
dw_1.SetItem(2,'id',4000)
dw_1.object.phone.original[2] = "12"
dw_1.GetItemstring(2,'phone',primary!,true) //µÃµ½12
dw_1.GetItemstring(2,'phone',primary!,false) //pbµÃµ½nullÖµ£¬ÎÒÃÇÄÜµÃµ½12
*/

string ls_result
string ls_buffer
long ll_row
string ls_null

SetNull(ls_null)

dw_1.dataobject = 'd_dotoperate'
dw_1.SetTransObject(sqlca)
dw_1.Retrieve()


//primary buffer
//Row(NotModified),Col(NotModified),Modified current value
dw_1.object.emp_fname.current[1] = ls_null
wf_RunOrSave(ab_save,1,'emp_fname',primary!,"current","Row(NotModified),Col(NotModified),Value(ToNull)",2901)

//Row(NotModified),Col(NotModified),Modified Original value
dw_1.object.emp_fname.Original[2] = ls_null
wf_RunOrSave(ab_save,2,'emp_fname',primary!,"Original","Row(NotModified),Col(NotModified),Value(ToNull)",2902)

////Row(DataModified),Col(NotModified),Modify Original value
//dw_1.SetItem(3,'emp_id',4000)
//dw_1.object.emp_fname.original[3] = ls_null
//wf_RunOrSave(ab_save,3,'emp_fname',primary!,"Original","Row(DataModified),Col(NotModified),Value(ToNull)",2903)


//Row(DataModified),Col(DataModified),Modify Original value
dw_1.SetItem(4,'emp_fname',"Modified")
dw_1.object.emp_fname.original[4] = ls_null
wf_RunOrSave(ab_save,4,'emp_fname',primary!,"Original","Row(DataModified),Col(DataModified),Value(ToNull)",2904)

//Row(DataModified),Col(NotModified),Modify Current value
dw_1.SetItem(5,'emp_id',4000)
dw_1.object.emp_fname.Current[5] = ls_null
wf_RunOrSave(ab_save,5,'emp_fname',primary!,"Current","Row(DataModified),Col(NotModified),Value(ToNull)",2905)

//Row(DataModified),Col(DataModified),Modify Current value
dw_1.SetItem(6,'emp_fname',"Modified")
dw_1.object.emp_fname.Current[6] = ls_null
wf_RunOrSave(ab_save,6,'emp_fname',primary!,"Current","Row(DataModified),Col(DataModified),Value(ToNull)",2906)


//Row(New),Col(NotModified),Modify Current Value
ll_row = dw_1.InsertRow(0)
dw_1.Object.emp_fname.Current[ll_row] = ls_null
wf_RunOrSave(ab_save,ll_row,'emp_fname',primary!,"Current","Row(New),Col(NotModified),Value(ToNull)",2907)

//Row(New),Col(NotModified),Modify Original Value
ll_row = dw_1.InsertRow(0)
dw_1.Object.emp_fname.Original[ll_row] = ls_null
wf_RunOrSave(ab_save,ll_row,'emp_fname',primary!,"Original","Row(New),Col(NotModified),Value(ToNull)",2908)

//Row(NewModified),Col(NotModified),Modify Original Value
ll_row = dw_1.InsertRow(0)
dw_1.SetItem(ll_row,'emp_id',4000)
dw_1.Object.emp_fname.Original[ll_row] = ls_null
wf_RunOrSave(ab_save,ll_row,'emp_fname',primary!,"Original","Row(NewModified),Col(NotModified),Value(ToNull)",2909)

//Row(NewModified),Col(DataModified),Modify Original Value
ll_row = dw_1.InsertRow(0)
dw_1.SetItem(ll_row,'emp_fname',"Modified")
dw_1.Object.emp_fname.Original[ll_row] = ls_null
wf_RunOrSave(ab_save,ll_row,'emp_fname',primary!,"Original","Row(NewModified),Col(DataModified),Value(ToNull)",2910)

//Row(NewModified),Col(NotModified),Modify Current Value
ll_row = dw_1.InsertRow(0)
dw_1.SetItem(ll_row,'emp_id',4000)
dw_1.Object.emp_fname.Current[ll_row] = ls_null
wf_RunOrSave(ab_save,ll_row,'emp_fname',primary!,"Current","Row(NewModified),Col(NotModified),Value(ToNull)",2911)

//Row(NewModified),Col(DataModified),Modify Current Value
ll_row = dw_1.InsertRow(0)
dw_1.SetItem(ll_row,'emp_fname',"Modified")
dw_1.Object.emp_fname.Current[ll_row] = ls_null
wf_RunOrSave(ab_save,ll_row,'emp_fname',primary!,"Current","Row(NewModified),Col(DataModified),Value(ToNull)",2912)


//delete buffer
dw_1.dataobject = 'd_dotoperate'
dw_1.SetTransObject(sqlca)
dw_1.Retrieve()

//Row(NotModified),Col(NotModified),Modify current value
//dw_1.DeleteRow(1)
dw_1.RowsMove(1,1,primary!,dw_1,1,delete!)
dw_1.object.emp_fname.delete.current[1] = ls_null
wf_RunOrSave(ab_save,1,'emp_fname',delete!,"current","Row(NotModified),Col(NotModified),Value(ToNull)",2921)

//Row(NotModified),Col(NotModified),Modify Original value
dw_1.ResetUpdate()
//dw_1.DeleteRow(1)
dw_1.RowsMove(1,1,primary!,dw_1,1,delete!)
dw_1.object.emp_fname.delete.Original[1] = ls_null
wf_RunOrSave(ab_save,1,'emp_fname',delete!,"Original","Row(NotModified),Col(NotModified),Value(ToNull)",2922)

//Row(DataModified),Col(NotModified),Modify current value
dw_1.ResetUpdate()
dw_1.SetItem(1,'emp_id',4000)
//dw_1.DeleteRow(1)
dw_1.RowsMove(1,1,primary!,dw_1,1,delete!)
dw_1.object.emp_fname.delete.current[1] = ls_null
wf_RunOrSave(ab_save,1,'emp_fname',delete!,"current","Row(DataModified),Col(NotModified),Value(ToNull)",2923)

//Row(DataModified),Col(DataModified),Modify current value
dw_1.ResetUpdate()
dw_1.SetItem(1,'emp_fname',"Modified")
//dw_1.DeleteRow(1)
dw_1.RowsMove(1,1,primary!,dw_1,1,delete!)
dw_1.object.emp_fname.delete.current[1] = ls_null
wf_RunOrSave(ab_save,1,'emp_fname',delete!,"current","Row(DataModified),Col(DataModified),Value(ToNull)",2924)

////Row(DataModified),Col(NotModified),Modify Original value
//dw_1.ResetUpdate()
//dw_1.SetItem(1,'emp_id',4000)
////dw_1.DeleteRow(1)
//dw_1.RowsMove(1,1,primary!,dw_1,1,delete!)
//dw_1.object.emp_fname.delete.Original[1] = ls_null
//wf_RunOrSave(ab_save,1,'emp_fname',delete!,"Original","Row(DataModified),Col(NotModified),Value(ToNull)",2925)
//
////Row(DataModified),Col(DataModified),Modify Original value
//dw_1.ResetUpdate()
//dw_1.SetItem(1,'emp_fname',"Modified")
////dw_1.DeleteRow(1)
//dw_1.RowsMove(1,1,primary!,dw_1,1,delete!)
//dw_1.object.emp_fname.delete.Original[1] = ls_null
//wf_RunOrSave(ab_save,1,'emp_fname',delete!,"Original","Row(DataModified),Col(DataModified),Value(ToNull)",2926)


//Filter »º³åÇø
dw_1.dataobject = 'd_dotoperate'
dw_1.SetTransObject(sqlca)
dw_1.Retrieve()
//Row(NotModified),Col(NotModified),Modified current value
dw_1.SetFilter("emp_id <> 195")
dw_1.Filter()

dw_1.object.emp_fname.filter.current[1] = ls_null
wf_RunOrSave(ab_save,1,'emp_fname',filter!,"current","Row(NotModified),Col(NotModified),Value(ToNull)",2941)

//Row(NotModified),Col(NotModified),Modified Original value
dw_1.SetFilter("emp_id <> 243")
dw_1.Filter()

dw_1.object.emp_fname.filter.Original[1] = ls_null
wf_RunOrSave(ab_save,1,'emp_fname',filter!,"Original","Row(NotModified),Col(NotModified),Value(ToNull)",2942)

////Row(DataModified),Col(NotModified),Modify Original value
//ll_row = dw_1.Find("emp_id = 249",1,50)
//dw_1.SetItem(ll_row,'emp_id',2000)
//dw_1.SetFilter("emp_id <> 2000")
//dw_1.Filter()
//dw_1.object.emp_fname.filter.original[1] = ls_null
//wf_RunOrSave(ab_save,1,'emp_fname',filter!,"Original","Row(DataModified),Col(NotModified),Value(ToNull)",2943)
//
////Row(DataModified),Col(DataModified),Modify Original value
//ll_row = dw_1.Find("emp_id = 278",1,50)
//dw_1.SetItem(ll_row,'emp_fname',"Modified")
//dw_1.SetFilter("emp_id <> 278")
//dw_1.Filter()
//dw_1.object.emp_fname.filter.original[1] = ls_null
//wf_RunOrSave(ab_save,1,'emp_fname',filter!,"Original","Row(DataModified),Col(DataModified),Value(ToNull)",2944)

//Row(DataModified),Col(NotModified),Modify Current value
ll_row = dw_1.Find("emp_id = 316",1,50)
dw_1.SetItem(ll_row,'emp_id',2001)
dw_1.SetFilter("emp_id <> 2001")
dw_1.Filter()

dw_1.object.emp_fname.filter.Current[1] = ls_null
wf_RunOrSave(ab_save,1,'emp_fname',filter!,"Current","Row(DataModified),Col(NotModified),Value(ToNull)",2945)

//Row(DataModified),Col(DataModified),Modify Current value
ll_row = dw_1.Find("emp_id = 390",1,50)
dw_1.SetItem(ll_row,'emp_fname',"Modified")
dw_1.SetFilter("emp_id <> 390")
dw_1.Filter()
dw_1.object.emp_fname.filter.Current[1] = ls_null
wf_RunOrSave(ab_save,1,'emp_fname',filter!,"Current","Row(DataModified),Col(DataModified),Value(ToNull)",2946)


////Row(New),Col(NotModified),Modify Current Value
dw_1.SetFilter("")
dw_1.Filter()
ll_row = dw_1.InsertRow(0)
dw_1.RowsMove(ll_row,ll_row,primary!,dw_1,1,Filter!)

dw_1.Object.emp_fname.filter.Current[1] = ls_null
wf_RunOrSave(ab_save,1,'emp_fname',filter!,"Current","Row(New),Col(NotModified),Value(ToNull)",2947)

////Row(New),Col(NotModified),Modify Original Value
dw_1.SetFilter("")
dw_1.Filter()
ll_row = dw_1.InsertRow(0)
dw_1.RowsMove(ll_row,ll_row,primary!,dw_1,1,Filter!)
dw_1.Object.emp_fname.filter.Original[1] = ls_null
wf_RunOrSave(ab_save,1,'emp_fname',filter!,"Original","Row(New),Col(NotModified),Value(ToNull)",2948)

//Row(NewModified),Col(NotModified),Modify Original Value
ll_row = dw_1.InsertRow(0)
dw_1.SetItem(ll_row,'emp_id',4000)
dw_1.SetFilter("emp_id <> 4000 or isnull(emp_id) ")
dw_1.Filter()

dw_1.Object.emp_fname.filter.Original[1] = ls_null
wf_RunOrSave(ab_save,1,'emp_fname',filter!,"Original","Row(NewModified),Col(NotModified),Value(ToNull)",2949)

//Row(NewModified),Col(DataModified),Modify Original Value
ll_row = dw_1.InsertRow(0)
dw_1.SetItem(ll_row,'emp_id',4001)
dw_1.SetItem(ll_row,'emp_fname',"Modified")

dw_1.SetFilter("emp_id <> 4001 or isnull(emp_id) ")
dw_1.Filter()

dw_1.Object.emp_fname.filter.Original[1] = ls_null
//messagebox(dw_1.GetItemString(1,'emp_fname',filter!,true),string(dw_1.object.emp_fname.filter.original[1]))
//messagebox('',string(dw_1.object.emp_fname.filter.current[1]))
wf_RunOrSave(ab_save,1,'emp_fname',filter!,"Original","Row(NewModified),Col(DataModified),Value(ToNull)",2950)

//Row(NewModified),Col(NotModified),Modify Current Value
ll_row = dw_1.InsertRow(0)
dw_1.SetItem(ll_row,'emp_id',4002)
dw_1.SetFilter("emp_id <> 4002 or isnull(emp_id) ")
dw_1.Filter()

dw_1.Object.emp_fname.filter.Current[1] = ls_null
wf_RunOrSave(ab_save,1,'emp_fname',filter!,"Current","Row(NewModified),Col(NotModified),Value(ToNull)",2951)

//Row(NewModified),Col(DataModified),Modify Current Value
ll_row = dw_1.InsertRow(0)
dw_1.SetItem(ll_row,'emp_id',4003)
dw_1.SetItem(ll_row,'emp_fname',"Modified")


dw_1.SetFilter("emp_id <> 4003 or isnull(emp_id) ")
dw_1.Filter()
dw_1.Object.emp_fname.filter.Current[1] = ls_null
wf_RunOrSave(ab_save,1,'emp_fname',filter!,"Current","Row(NewModified),Col(DataModified),Value(ToNull)",2952)

end subroutine

public subroutine wf_dotoperatorfromnull (boolean ab_save);/*µã²Ù×÷ÓëOriginal,CurrentÐÞ¸Ä¹ØÏµ£º
1.	Primary buffer
	New:
	NewModified:
	NotModified:
	DataModified:
	·Ö±ðÐÞ¸ÄÒÔÉÏ×´Ì¬ÏÂÁÐµÄCurrent and Original value,²é¿´ÐÞ¸ÄºóCurrent and Original value
	µÄ±ä»¯
	
2.	Delete buffer
	NotModified:
	DataModified:
	ÐÞ¸Äcurrent,original£¬µ«¶ÔÓÚDataModified×´Ì¬ÐÐ£¬ÐÞ¸ÄoriginalºóPBÖÐ»á³ö´í£¬Ó¦ÊÇPBµÄBUG¡£
3.	Filter buffer
	New:
	NewModified:
	NotModified:
	DataModified:·Ö±ðÐÞ¸ÄÒÔÉÏ×´Ì¬ÏÂÁÐµÄCurrent and Original value,²é¿´ÐÞ¸ÄºóCurrent and 
	Original valueµÄ±ä»¯
*/
//2003-11-04 Ôö¼Ó
//1.	ÐÞ¸ÄÖµ¶ÔÐÐÁÐ×´Ì¬µÄÓ°Ïì
//2.	ÐÞ¸ÄÁÐÎªNULLµ½Not NULL»òÕßÐÞ¸ÄÁÐÎªNot NULLµ½NULL,¸÷ÖÖÐÐÁÐ×´Ì¬ÏÂÐÞ¸Ä£¬²é¿´current,value
//		±ä»¯ÓëÐÐÁÐ×´Ì¬±ä»¯
//3.	ÐÞ¸ÄÐÐÁÐ×´Ì¬¶ÔCurrent,OrigianlµÄÓ°Ïì

string ls_result
string ls_buffer
long ll_row
string ls_value = "MPhone"



dw_1.dataobject = 'd_dotoperate'
dw_1.SetTransObject(sqlca)
dw_1.Retrieve()


//primary buffer
//Row(NotModified),Col(NotModified),Modified current value
dw_1.object.phone.current[1] = ls_value
wf_RunOrSave(ab_save,1,'phone',primary!,"current","Row(NotModified),Col(NotModified),Value(FromNull)",3001)

//Row(NotModified),Col(NotModified),Modified Original value
dw_1.object.phone.Original[2] = ls_value
wf_RunOrSave(ab_save,2,'phone',primary!,"Original","Row(NotModified),Col(NotModified),Value(FromNull)",3002)

////Row(DataModified),Col(NotModified),Modify Original value
//dw_1.SetItem(3,'emp_id',4000)
//dw_1.object.phone.original[3] = ls_value
//wf_RunOrSave(ab_save,3,'phone',primary!,"Original","Row(DataModified),Col(NotModified),Value(FromNull)",3003)


//Row(DataModified),Col(DataModified),Modify Original value
dw_1.SetItem(4,'phone',"Modified")
dw_1.object.phone.original[4] = ls_value
wf_RunOrSave(ab_save,4,'phone',primary!,"Original","Row(DataModified),Col(DataModified),Value(FromNull)",3004)

//Row(DataModified),Col(NotModified),Modify Current value
dw_1.SetItem(5,'emp_id',4000)
dw_1.object.phone.Current[5] = ls_value
wf_RunOrSave(ab_save,5,'phone',primary!,"Current","Row(DataModified),Col(NotModified),Value(FromNull)",3005)

////Row(DataModified),Col(DataModified),Modify Current value
//dw_1.SetItem(6,'phone',"Modified")
//dw_1.object.phone.Current[6] = ls_value
//wf_RunOrSave(ab_save,6,'phone',primary!,"Current","Row(DataModified),Col(DataModified),Value(FromNull)",3006)


//Row(New),Col(NotModified),Modify Current Value
ll_row = dw_1.InsertRow(0)
dw_1.Object.phone.Current[ll_row] = ls_value
wf_RunOrSave(ab_save,ll_row,'phone',primary!,"Current","Row(New),Col(NotModified),Value(FromNull)",3007)

//Row(New),Col(NotModified),Modify Original Value
ll_row = dw_1.InsertRow(0)
dw_1.Object.phone.Original[ll_row] = ls_value
wf_RunOrSave(ab_save,ll_row,'phone',primary!,"Original","Row(New),Col(NotModified),Value(FromNull)",3008)

//Row(NewModified),Col(NotModified),Modify Original Value
ll_row = dw_1.InsertRow(0)
dw_1.SetItem(ll_row,'emp_id',4000)
dw_1.Object.phone.Original[ll_row] = ls_value
wf_RunOrSave(ab_save,ll_row,'phone',primary!,"Original","Row(NewModified),Col(NotModified),Value(FromNull)",3009)

//Row(NewModified),Col(DataModified),Modify Original Value
ll_row = dw_1.InsertRow(0)
dw_1.SetItem(ll_row,'phone',"Modified")
dw_1.Object.phone.Original[ll_row] = ls_value
wf_RunOrSave(ab_save,ll_row,'phone',primary!,"Original","Row(NewModified),Col(DataModified),Value(FromNull)",3010)

//Row(NewModified),Col(NotModified),Modify Current Value
ll_row = dw_1.InsertRow(0)
dw_1.SetItem(ll_row,'emp_id',4000)
dw_1.Object.phone.Current[ll_row] = ls_value
wf_RunOrSave(ab_save,ll_row,'phone',primary!,"Current","Row(NewModified),Col(NotModified),Value(FromNull)",3011)

//Row(NewModified),Col(DataModified),Modify Current Value
ll_row = dw_1.InsertRow(0)
dw_1.SetItem(ll_row,'phone',"Modified")
dw_1.Object.phone.Current[ll_row] = ls_value
wf_RunOrSave(ab_save,ll_row,'phone',primary!,"Current","Row(NewModified),Col(DataModified),Value(FromNull)",3012)


//delete buffer
dw_1.dataobject = 'd_dotoperate'
dw_1.SetTransObject(sqlca)
dw_1.Retrieve()

//Row(NotModified),Col(NotModified),Modify current value
//dw_1.DeleteRow(1)
dw_1.RowsMove(1,1,primary!,dw_1,1,delete!)
dw_1.object.phone.delete.current[1] = ls_value
wf_RunOrSave(ab_save,1,'phone',delete!,"current","Row(NotModified),Col(NotModified),Value(FromNull)",3021)

//Row(NotModified),Col(NotModified),Modify Original value
dw_1.ResetUpdate()
//dw_1.DeleteRow(1)
dw_1.RowsMove(1,1,primary!,dw_1,1,delete!)
dw_1.object.phone.delete.Original[1] = ls_value
wf_RunOrSave(ab_save,1,'phone',delete!,"Original","Row(NotModified),Col(NotModified),Value(FromNull)",3022)

//Row(DataModified),Col(NotModified),Modify current value
dw_1.ResetUpdate()
dw_1.SetItem(1,'emp_id',4000)
//dw_1.DeleteRow(1)
dw_1.RowsMove(1,1,primary!,dw_1,1,delete!)
dw_1.object.phone.delete.current[1] = ls_value
wf_RunOrSave(ab_save,1,'phone',delete!,"current","Row(DataModified),Col(NotModified),Value(FromNull)",3023)

//Row(DataModified),Col(DataModified),Modify current value
dw_1.ResetUpdate()
dw_1.SetItem(1,'phone',"Modified")
//dw_1.DeleteRow(1)
dw_1.RowsMove(1,1,primary!,dw_1,1,delete!)
dw_1.object.phone.delete.current[1] = ls_value
wf_RunOrSave(ab_save,1,'phone',delete!,"current","Row(DataModified),Col(DataModified),Value(FromNull)",3024)

////Row(DataModified),Col(NotModified),Modify Original value
//dw_1.ResetUpdate()
//dw_1.SetItem(1,'emp_id',4000)
////dw_1.DeleteRow(1)
//dw_1.RowsMove(1,1,primary!,dw_1,1,delete!)
//dw_1.object.phone.delete.Original[1] = ls_value
//wf_RunOrSave(ab_save,1,'phone',delete!,"Original","Row(DataModified),Col(NotModified),Value(FromNull)",3025)

//Row(DataModified),Col(DataModified),Modify Original value
dw_1.ResetUpdate()
dw_1.SetItem(1,'phone',"Modified")
//dw_1.DeleteRow(1)
dw_1.RowsMove(1,1,primary!,dw_1,1,delete!)
dw_1.object.phone.delete.Original[1] = ls_value
wf_RunOrSave(ab_save,1,'phone',delete!,"Original","Row(DataModified),Col(DataModified),Value(FromNull)",3026)


//Filter »º³åÇø
dw_1.dataobject = 'd_dotoperate'
dw_1.SetTransObject(sqlca)
dw_1.Retrieve()
//Row(NotModified),Col(NotModified),Modified current value
dw_1.SetFilter("emp_id <> 195")
dw_1.Filter()

dw_1.object.phone.filter.current[1] = ls_value
wf_RunOrSave(ab_save,1,'phone',filter!,"current","Row(NotModified),Col(NotModified),Value(FromNull)",3041)

//Row(NotModified),Col(NotModified),Modified Original value
dw_1.SetFilter("emp_id <> 243")
dw_1.Filter()

dw_1.object.phone.filter.Original[1] = ls_value
wf_RunOrSave(ab_save,1,'phone',filter!,"Original","Row(NotModified),Col(NotModified),Value(FromNull)",3042)

////Row(DataModified),Col(NotModified),Modify Original value
//ll_row = dw_1.Find("emp_id = 249",1,50)
//dw_1.SetItem(ll_row,'emp_id',2000)
//dw_1.SetFilter("emp_id <> 2000")
//dw_1.Filter()
//dw_1.object.phone.filter.original[1] = ls_value
//wf_RunOrSave(ab_save,1,'phone',filter!,"Original","Row(DataModified),Col(NotModified),Value(FromNull)",3043)

//Row(DataModified),Col(DataModified),Modify Original value
ll_row = dw_1.Find("emp_id = 278",1,50)
dw_1.SetItem(ll_row,'phone',"Modified")
dw_1.SetFilter("emp_id <> 278")
dw_1.Filter()
dw_1.object.phone.filter.original[1] = ls_value
wf_RunOrSave(ab_save,1,'phone',filter!,"Original","Row(DataModified),Col(DataModified),Value(FromNull)",3044)

//Row(DataModified),Col(NotModified),Modify Current value
ll_row = dw_1.Find("emp_id = 316",1,50)
dw_1.SetItem(ll_row,'emp_id',2001)
dw_1.SetFilter("emp_id <> 2001")
dw_1.Filter()

dw_1.object.phone.filter.Current[1] = ls_value
wf_RunOrSave(ab_save,1,'phone',filter!,"Current","Row(DataModified),Col(NotModified),Value(FromNull)",3045)

//Row(DataModified),Col(DataModified),Modify Current value
ll_row = dw_1.Find("emp_id = 390",1,50)
dw_1.SetItem(ll_row,'phone',"Modified")
dw_1.SetFilter("emp_id <> 390")
dw_1.Filter()
dw_1.object.phone.filter.Current[1] = ls_value
wf_RunOrSave(ab_save,1,'phone',filter!,"Current","Row(DataModified),Col(DataModified),Value(FromNull)",3046)


////Row(New),Col(NotModified),Modify Current Value
dw_1.SetFilter("")
dw_1.Filter()
ll_row = dw_1.InsertRow(0)
dw_1.RowsMove(ll_row,ll_row,primary!,dw_1,1,Filter!)

dw_1.Object.phone.filter.Current[1] = ls_value
wf_RunOrSave(ab_save,1,'phone',filter!,"Current","Row(New),Col(NotModified),Value(FromNull)",3047)

////Row(New),Col(NotModified),Modify Original Value
dw_1.SetFilter("")
dw_1.Filter()
ll_row = dw_1.InsertRow(0)
dw_1.RowsMove(ll_row,ll_row,primary!,dw_1,1,Filter!)
dw_1.Object.phone.filter.Original[1] = ls_value
wf_RunOrSave(ab_save,1,'phone',filter!,"Original","Row(New),Col(NotModified),Value(FromNull)",3048)

//Row(NewModified),Col(NotModified),Modify Original Value
ll_row = dw_1.InsertRow(0)
dw_1.SetItem(ll_row,'emp_id',4000)
dw_1.SetFilter("emp_id <> 4000 or isnull(emp_id) ")
dw_1.Filter()

dw_1.Object.phone.filter.Original[1] = ls_value
wf_RunOrSave(ab_save,1,'phone',filter!,"Original","Row(NewModified),Col(NotModified),Value(FromNull)",3049)

//Row(NewModified),Col(DataModified),Modify Original Value
ll_row = dw_1.InsertRow(0)
dw_1.SetItem(ll_row,'emp_id',4001)
dw_1.SetItem(ll_row,'phone',"Modified")

dw_1.SetFilter("emp_id <> 4001 or isnull(emp_id) ")
dw_1.Filter()

dw_1.Object.phone.filter.Original[1] = ls_value
//messagebox(dw_1.GetItemString(1,'phone',filter!,true),string(dw_1.object.phone.filter.original[1]))
//messagebox('',string(dw_1.object.phone.filter.current[1]))
wf_RunOrSave(ab_save,1,'phone',filter!,"Original","Row(NewModified),Col(DataModified),Value(FromNull)",3050)

//Row(NewModified),Col(NotModified),Modify Current Value
ll_row = dw_1.InsertRow(0)
dw_1.SetItem(ll_row,'emp_id',4002)
dw_1.SetFilter("emp_id <> 4002 or isnull(emp_id) ")
dw_1.Filter()

dw_1.Object.phone.filter.Current[1] = ls_value
wf_RunOrSave(ab_save,1,'phone',filter!,"Current","Row(NewModified),Col(NotModified),Value(FromNull)",3051)

//Row(NewModified),Col(DataModified),Modify Current Value
ll_row = dw_1.InsertRow(0)
dw_1.SetItem(ll_row,'emp_id',4003)
dw_1.SetItem(ll_row,'phone',"Modified")


dw_1.SetFilter("emp_id <> 4003 or isnull(emp_id) ")
dw_1.Filter()
dw_1.Object.phone.filter.Current[1] = ls_value
wf_RunOrSave(ab_save,1,'phone',filter!,"Current","Row(NewModified),Col(DataModified),Value(FromNull)",3052)

end subroutine

public subroutine wf_message (string as_operate, string as_problem);/*
						[Á´½Ó]       http://192.0.1.21:8080/integrationcase/

						[ÎÊÌâ]       ±í´ïÊ½ÖÐº¯ÊýÖ´ÐÐ³ö´í
						
						[Ó°Ïì³Ì¶È] ¡ï¡ï¡ï¡ï¡ï
						
						[²Ù×÷]       click "Test"->"DwExpressionFunction"

						execute 05 "All Function View"
						
						[Êä³ö]  Çë´¦ÀíºìÉ«³ö´í²¿·Ý
						
											  ·µ»ØÖµ¡¡¡¡¡¡¡¡¡¡¡¡¡¡º¯Êý
*/
//wf_message(lb_testitems.text(1),"datawindow ¶ÔÏóÊôÐÔ")
string ls_message[]
ls_message[]={'[±àºÅ]','','GroupDatawindow '+string(ii_number,"000"),''}
ii_number++
f_outputtext(dw_output,ls_message)
ls_message[]={'[ÈÕÆÚ]','',string(today(),"yyyyÄêmmÔÂddÈÕ"),''}
f_outputtext(dw_output,ls_message)

ls_message[]= {"[Á´½Ó]","",gs_link,""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"[ÎÊÌâ]","",''+as_problem+'',""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"[Ó°Ïì³Ì¶È]","","¡ï¡ï¡ï¡ï¡ï",""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"[²Ù×÷]","",'click "Test"->"DwDataAccess"',""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"[²Ù×÷]","",'execute "'+as_operate+'"',""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"[Êä³ö]","","",""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"½á¹û","¶Ô±È","²Ù×÷","·µ»ØÖµ»ò½á¹û"}
f_outputtext(dw_output,ls_message)
end subroutine

public function integer wf_returnerror ();return ii_error_no
end function

on w_dwdataaccess.create
this.cb_autorun=create cb_autorun
this.cbx_showright=create cbx_showright
this.st_error=create st_error
this.dw_2=create dw_2
this.cbx_1=create cbx_1
this.lb_testitems=create lb_testitems
this.cb_run=create cb_run
this.cb_saveas=create cb_saveas
this.cb_error=create cb_error
this.cbx_right=create cbx_right
this.cb_max=create cb_max
this.cb_1=create cb_1
this.cb_sort=create cb_sort
this.cb_reset=create cb_reset
this.dw_1=create dw_1
this.dw_output=create dw_output
this.gb_1=create gb_1
this.gb_2=create gb_2
this.gb_3=create gb_3
this.gb_4=create gb_4
this.Control[]={this.cb_autorun,&
this.cbx_showright,&
this.st_error,&
this.dw_2,&
this.cbx_1,&
this.lb_testitems,&
this.cb_run,&
this.cb_saveas,&
this.cb_error,&
this.cbx_right,&
this.cb_max,&
this.cb_1,&
this.cb_sort,&
this.cb_reset,&
this.dw_1,&
this.dw_output,&
this.gb_1,&
this.gb_2,&
this.gb_3,&
this.gb_4}
end on

on w_dwdataaccess.destroy
destroy(this.cb_autorun)
destroy(this.cbx_showright)
destroy(this.st_error)
destroy(this.dw_2)
destroy(this.cbx_1)
destroy(this.lb_testitems)
destroy(this.cb_run)
destroy(this.cb_saveas)
destroy(this.cb_error)
destroy(this.cbx_right)
destroy(this.cb_max)
destroy(this.cb_1)
destroy(this.cb_sort)
destroy(this.cb_reset)
destroy(this.dw_1)
destroy(this.dw_output)
destroy(this.gb_1)
destroy(this.gb_2)
destroy(this.gb_3)
destroy(this.gb_4)
end on

type cb_autorun from commandbutton within w_dwdataaccess
integer x = 2350
integer y = 132
integer width = 297
integer height = 84
integer taborder = 20
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "AutoRun"
end type

event clicked;int li_itemcount
cb_reset.triggerevent(clicked!)
ii_number = 1
lb_testitems.ExtendedSelect = false
lb_testitems.MultiSelect = false
For li_itemCount = 1 to lb_testitems.TotalItems()
	lb_testitems.selectitem(li_itemcount)
	cb_run.Triggerevent(clicked!)
Next
lb_testitems.ExtendedSelect = true
lb_testitems.MultiSelect = true
end event

type cbx_showright from checkbox within w_dwdataaccess
boolean visible = false
integer x = 2743
integer y = 140
integer width = 402
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "showright"
boolean checked = true
end type

type st_error from statictext within w_dwdataaccess
integer x = 4137
integer y = 336
integer width = 402
integer height = 76
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
boolean focusrectangle = false
end type

type dw_2 from datawindow within w_dwdataaccess
boolean visible = false
integer x = 82
integer y = 1188
integer width = 2560
integer height = 792
integer taborder = 30
string title = "none"
string dataobject = "d_dwdataaccess"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type cbx_1 from checkbox within w_dwdataaccess
integer x = 2350
integer y = 40
integer width = 293
integer height = 88
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "Max"
end type

event clicked;IF this.checked Then
	lb_testitems.Height=500
	lb_testitems.BringToTop = TRUE
else
	lb_testitems.Height=336
end if
end event

type lb_testitems from listbox within w_dwdataaccess
integer x = 73
integer y = 52
integer width = 2254
integer height = 336
integer taborder = 10
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
boolean hscrollbar = true
boolean vscrollbar = true
boolean sorted = false
boolean multiselect = true
borderstyle borderstyle = stylelowered!
boolean extendedselect = true
end type

event constructor;int i
string ls_item[]

ls_item[1]="dwcontrol.Object.columnname {.buffer } {.datasource } { [ rownum ] }"
ls_item[2]="dwcontrol.Object.columnname {.Primary } {.datasource }.Selected"
ls_item[3]="dwcontrol.Object.columnname {.buffer } {.datasource } [ startrownum,endrownum ] "
ls_item[4]="dwcontrol.Object.Data {.buffer } {.datasource } [ rownum, colnum ]"
ls_item[5]="dwcontrol.Object.Data {.buffer } {.datasource } [ startrownum, startcolnum, endrownum, endcolnum ] "
ls_item[6]="dwcontrol.Object.Data {.buffer } {.datasource } { [ rownum ] }"
ls_item[7]="dwcontrol.Object.Data {.Primary } {.datasource }.Selected"
ls_item[8] ="dot data operator"
ls_item[9] ="dot data operator(to null)"
ls_item[10] ="dot data operator(from null)"


for i=1 to UpperBound(ls_item)
	this.additem(string(i,"00")+" "+ls_Item[i])
next

end event

type cb_run from commandbutton within w_dwdataaccess
integer x = 2350
integer y = 224
integer width = 293
integer height = 80
integer taborder = 100
integer textsize = -9
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "Run"
end type

event clicked;integer li_ItemTotal, li_ItemCount,li_rowcount

li_ItemTotal = lb_testitems.TotalItems( )

FOR li_ItemCount = 1 to li_ItemTotal
	
	if lb_testitems.State(li_ItemCount)=1 then
		li_rowcount = dw_output.rowcount()
		ii_errornumber = 0
		ii_rightnumber = 0
		wf_message(lb_testitems.text(li_ItemCount),"")		
		choose case li_ItemCount
			case 1
				wf_syntax1()
			case 2
				wf_syntax2()
			case 3
				wf_syntax3()
			case 4
				wf_syntax4()
			case 5
				wf_syntax5()
			case 6
				wf_syntax6()
			case 7
				wf_syntax7()
			case 8
				wf_dotoperate(false)
			case 9
				wf_dotoperatortonull(false)
			case 10
				wf_dotoperatorfromnull(false)
		end choose

	//add for autorun
	if ii_errornumber = 0 and not(cbx_right.checked) then
		dw_output.rowsdiscard(li_rowcount + 1,li_rowcount + ii_rightnumber + 10,primary!)
	end if
		
	end if

NEXT

st_error.text = "Error = " + string(ii_error_no)
end event

type cb_saveas from commandbutton within w_dwdataaccess
integer x = 4073
integer y = 240
integer width = 270
integer height = 88
integer taborder = 150
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Saveas"
end type

event clicked;if dw_output.SaveAs("c:\output.txt", Text!	, false)=1 then
	messagebox("Alert","save to c:\output.text,OK!")
end if
end event

type cb_error from commandbutton within w_dwdataaccess
integer x = 3803
integer y = 240
integer width = 270
integer height = 88
integer taborder = 110
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Error"
end type

event clicked;if this.text="Error" then
	dw_output.setfilter("#1<>'Right'")
	dw_output.filter()
	this.text="All"
else
	dw_output.setfilter("")
	dw_output.filter()
	this.text="Error"
end if
end event

type cbx_right from checkbox within w_dwdataaccess
integer x = 2743
integer y = 64
integer width = 411
integer height = 68
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "output Right"
boolean checked = true
end type

type cb_max from commandbutton within w_dwdataaccess
integer x = 3534
integer y = 240
integer width = 270
integer height = 88
integer taborder = 120
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Max"
end type

event clicked;if cb_max.text="Max" then
	dw_output.x=dw_1.x

	dw_output.width+=145+dw_1.width

	cb_max.text="Min"
	gb_1.visible=false
	gb_2.visible=false
	dw_1.visible=false
	
else
	
	dw_output.x=dw_1.x+dw_1.width +145
	dw_output.width=dw_output.width -dw_1.width -145

	cb_max.text="Max"
	gb_1.visible=false
	gb_2.visible=false
	dw_1.visible=true
	dw_output.visible=true
end if
end event

type cb_1 from commandbutton within w_dwdataaccess
integer x = 2350
integer y = 312
integer width = 293
integer height = 80
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Save"
end type

event clicked;integer li_ItemTotal, li_ItemCount

li_ItemTotal = lb_testitems.TotalItems( )

FOR li_ItemCount = 1 to li_ItemTotal
	
	if lb_testitems.State(li_ItemCount)=1 then
		
		choose case li_ItemCount
			case 8
				wf_dotoperate(true)
			case 9
				wf_dotoperatortonull(true)
			case 10
				wf_dotoperatorfromnull(true)
		end choose
	end if

NEXT

end event

type cb_sort from commandbutton within w_dwdataaccess
integer x = 3264
integer y = 240
integer width = 270
integer height = 88
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Sort"
end type

event clicked;dw_output.SetSort("#1 A, #2 A,#3 A")

dw_output.Sort()
end event

type cb_reset from commandbutton within w_dwdataaccess
integer x = 2994
integer y = 240
integer width = 270
integer height = 88
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Reset"
end type

event clicked;dw_output.reset()
end event

type dw_1 from datawindow within w_dwdataaccess
integer x = 73
integer y = 480
integer width = 2560
integer height = 2016
integer taborder = 20
string title = "none"
string dataobject = "d_dwdataaccess"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;settransobject(sqlca)
retrieve()
end event

type dw_output from datawindow within w_dwdataaccess
integer x = 2706
integer y = 480
integer width = 1792
integer height = 2016
integer taborder = 60
string title = "none"
string dataobject = "d_output"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;settransobject(sqlca)

end event

type gb_1 from groupbox within w_dwdataaccess
integer x = 2683
integer y = 416
integer width = 1879
integer height = 2144
integer taborder = 130
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = " output "
end type

type gb_2 from groupbox within w_dwdataaccess
integer x = 37
integer y = 416
integer width = 2629
integer height = 2144
integer taborder = 70
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = " datawindow "
end type

type gb_3 from groupbox within w_dwdataaccess
integer x = 37
integer width = 2629
integer height = 416
integer taborder = 80
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "IE"
end type

type gb_4 from groupbox within w_dwdataaccess
integer x = 2683
integer width = 1879
integer height = 416
integer taborder = 90
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
end type

