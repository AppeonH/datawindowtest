$PBExportHeader$n_datastore.sru
forward
global type n_datastore from datastore
end type
end forward

global type n_datastore from datastore
end type
global n_datastore n_datastore

type variables
checkbox cbx_3
checkbox cbx_4
listbox lb_1
string is_event
end variables

forward prototypes
public function integer wf_eventreturn (string as_event)
public subroutine wf_savetodb (string as_function, string as_parameter)
public subroutine wf_checkevent (string as_function, string as_parameter)
end prototypes

public function integer wf_eventreturn (string as_event);integer li_ret
select returnvalue into :li_ret from eventreturn where event = :as_event;
return li_ret
end function

public subroutine wf_savetodb (string as_function, string as_parameter);integer li_count
select count(*) into :li_count from event where function = :as_function and parameter = :as_parameter;
if li_count = 0 then
	insert into event(function,event,parameter) values(:as_function, :is_event,:as_parameter);
else
	update event set event = :is_event where function = :as_function and parameter = :as_parameter;
end if
is_event = ""
end subroutine

public subroutine wf_checkevent (string as_function, string as_parameter);string ls_event
//dw_1.wf_checkevent("ds.Retrieve",",hasdata")
//dw_1.wf_checkevent("ds.update","2,hasdata")

select event into :ls_event from event 
	where function = :as_function and parameter = :as_parameter;
if isnull(ls_event) then ls_event = ""	

if ls_event = is_event then
	lb_1.additem("Right|"+as_function+" "+as_parameter+"Event:"+is_event)
else
	lb_1.additem("Error|"+as_function+" "+as_parameter+"Event:"+is_event)
end if
is_event = ""
end subroutine

on n_datastore.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_datastore.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

event dberror;string ls_event
ls_event = "dberror"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" sqldbcode = "+string(sqldbcode) + " sqlerrtext = "+sqlerrtext +" sqlsynax = "+sqlsyntax +" row = "+string(row))
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event itemchanged;string ls_event
ls_event = "itemchanged"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event)
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event+" row = "+ string(row)+ " dwo.name = "+dwo.name+" dwo.type="+dwo.type+" data="+data)
end if
end event

event itemerror;string ls_event
ls_event = "itemerror"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" row = "+ string(row)+ " dwo.name = "+dwo.name+" dwo.type="+dwo.type+" data="+data)
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event retrieveend;string ls_event
ls_event = "retrieveend"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" rowcount="+string(rowcount))
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event retrievestart;string ls_event
ls_event = "retrievestart"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event)
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event sqlpreview;string ls_request,ls_sqltype,ls_buffer
choose case request
	case PreviewFunctionRetrieve!
		ls_request ="PreviewFunctionRetrieve"
	case PreviewFunctionReselectRow!	
		ls_request ="PreviewFunctionReselectRow"
	case PreviewFunctionRetrieve!
		ls_request ="PreviewFunctionUpdate"
end choose		
choose case sqltype
	case PreviewSelect!
		ls_sqltype = "PreviewSelect"
	case PreviewInsert!
		ls_sqltype = "PreviewInsert"
	case PreviewDelete!
		ls_sqltype = "PreviewDelete"
	case PreviewUpdate!
		ls_sqltype = "PreviewUpdate"
end choose		
choose case buffer
	case Primary!
		ls_buffer = "Primary"
	case Delete!	
		ls_buffer = "Delete"
	case Filter!	
		ls_buffer = "Filter"
end choose

string ls_event
ls_event = "sqlpreview"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" sqlpreviewfunction="+ls_request+" sqltype="+ls_sqltype+" sqlsynatax="+sqlsyntax+" buffer="+ls_buffer+" row ="+string(row))
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event updateend;string ls_event
ls_event = "updateend"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" rowsinserted="+string(rowsinserted)+" rowsupdated="+string(rowsupdated)+" rowdeleted="+string(rowsdeleted))
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event updatestart;string ls_event
ls_event = "updatestart"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event)
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

