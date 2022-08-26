$PBExportHeader$w_file.srw
forward
global type w_file from window
end type
type mle_time from multilineedit within w_file
end type
type mle_edit from multilineedit within w_file
end type
end forward

global type w_file from window
integer x = 773
integer y = 496
integer width = 2885
integer height = 1732
boolean titlebar = true
string title = "Notepad"
string menuname = "m_main"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 80269524
string icon = "AppIcon!"
mle_time mle_time
mle_edit mle_edit
end type
global w_file w_file

type variables
//Dummy variable yasar test
end variables
on w_file.create
if this.MenuName = "m_main" then this.MenuID = create m_main
this.mle_time=create mle_time
this.mle_edit=create mle_edit
this.Control[]={this.mle_time,&
this.mle_edit}
end on

on w_file.destroy
if IsValid(MenuID) then destroy(MenuID)
destroy(this.mle_time)
destroy(this.mle_edit)
end on

event resize;mle_edit.Width  = This.WorkSpaceWidth()
mle_edit.Height = This.WorkSpaceHeight()

end event

type mle_time from multilineedit within w_file
integer x = 5
integer y = 4
integer width = 439
integer height = 112
integer taborder = 20
boolean bringtotop = true
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type mle_edit from multilineedit within w_file
integer width = 1207
integer height = 512
integer taborder = 10
boolean bringtotop = true
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
boolean hscrollbar = true
boolean vscrollbar = true
borderstyle borderstyle = stylelowered!
boolean ignoredefaultbutton = true
end type

