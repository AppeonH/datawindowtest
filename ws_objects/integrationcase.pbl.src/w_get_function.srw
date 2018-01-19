$PBExportHeader$w_get_function.srw
forward
global type w_get_function from window
end type
type cb_2 from commandbutton within w_get_function
end type
type cb_1 from commandbutton within w_get_function
end type
type sle_1 from singlelineedit within w_get_function
end type
end forward

global type w_get_function from window
integer width = 3301
integer height = 624
boolean titlebar = true
string title = "Get Js Function"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_2 cb_2
cb_1 cb_1
sle_1 sle_1
end type
global w_get_function w_get_function

on w_get_function.create
this.cb_2=create cb_2
this.cb_1=create cb_1
this.sle_1=create sle_1
this.Control[]={this.cb_2,&
this.cb_1,&
this.sle_1}
end on

on w_get_function.destroy
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.sle_1)
end on

type cb_2 from commandbutton within w_get_function
integer x = 2729
integer y = 236
integer width = 457
integer height = 128
integer taborder = 40
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Change"
end type

event clicked;string ls_filename, ls_fullfilename,ls_line,ls_function,ls_class

integer li_return,li_handle,li_pos
if messagebox("Information","Are you want to change the js function in database?",question!,yesno!,2)= 2 then return
ls_fullfilename = sle_1.text
li_handle = FileOpen(ls_fullfilename,LineMode!,Read!)
if li_handle = -1 then return
li_return = fileread(li_handle,ls_line)
do while li_return <> -100
	ls_line = lefttrim(righttrim(ls_line))
	if pos(ls_line,"function")>0 and pos(ls_line ,"{}") = 0 &
			and left(ls_line,2) <>"//" &
			and pos(ls_line,"//$") = 0 then 		
		li_pos = pos(ls_line,"function")
		ls_line = mid (ls_line ,li_pos + 8,len(ls_line))
		ls_function = f_get_token(ls_line,"(")
		ls_function = lefttrim(righttrim(ls_function))
		if pos(ls_function,".Prototype")	> 0 then
			ls_class = f_get_token(ls_function,".")
		else			
			insert into runrate (class,function,runrate) values(:ls_class,:ls_function,0);
		end if
	end if
	li_return = fileread(li_handle,ls_line)
loop
fileclose(li_handle)
messagebox("Information","Finished")
	

end event

type cb_1 from commandbutton within w_get_function
integer x = 2729
integer y = 68
integer width = 457
integer height = 128
integer taborder = 20
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "..."
end type

event clicked;string ls_filename, ls_fullfilename,ls_line,ls_function,ls_class

integer li_return,li_handle
ls_fullfilename = sle_1.text

li_return = GetFileOpenName("Select File", ls_fullfilename, ls_filename, "js", "js text(*.js),*.js" )

IF li_return <> 1 THEN return
sle_1.text = ls_fullfilename

end event

type sle_1 from singlelineedit within w_get_function
integer x = 96
integer y = 64
integer width = 2587
integer height = 128
integer taborder = 10
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
string text = "C:\Program Files\Sybase\EAServer\html\appeon\weblibrary_debug\debug\datawin\eonrecordset.js"
borderstyle borderstyle = stylelowered!
end type

