$PBExportHeader$w_font.srw
forward
global type w_font from window
end type
type st_size from statictext within w_font
end type
type sle_size from singlelineedit within w_font
end type
type lb_style from listbox within w_font
end type
type sle_style from singlelineedit within w_font
end type
type st_2 from statictext within w_font
end type
type lb_font from listbox within w_font
end type
type sle_font from singlelineedit within w_font
end type
type st_1 from statictext within w_font
end type
type cb_cancel from commandbutton within w_font
end type
type cb_ok from commandbutton within w_font
end type
end forward

global type w_font from window
integer x = 1152
integer y = 672
integer width = 1591
integer height = 988
boolean titlebar = true
string title = "Fonts"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 80269524
string icon = "AppIcon!"
st_size st_size
sle_size sle_size
lb_style lb_style
sle_style sle_style
st_2 st_2
lb_font lb_font
sle_font sle_font
st_1 st_1
cb_cancel cb_cancel
cb_ok cb_ok
end type
global w_font w_font

type variables
///Heelo
end variables
on w_font.create
this.st_size=create st_size
this.sle_size=create sle_size
this.lb_style=create lb_style
this.sle_style=create sle_style
this.st_2=create st_2
this.lb_font=create lb_font
this.sle_font=create sle_font
this.st_1=create st_1
this.cb_cancel=create cb_cancel
this.cb_ok=create cb_ok
this.Control[]={this.st_size,&
this.sle_size,&
this.lb_style,&
this.sle_style,&
this.st_2,&
this.lb_font,&
this.sle_font,&
this.st_1,&
this.cb_cancel,&
this.cb_ok}
end on

on w_font.destroy
destroy(this.st_size)
destroy(this.sle_size)
destroy(this.lb_style)
destroy(this.sle_style)
destroy(this.st_2)
destroy(this.lb_font)
destroy(this.sle_font)
destroy(this.st_1)
destroy(this.cb_cancel)
destroy(this.cb_ok)
end on

type st_size from statictext within w_font
integer x = 800
integer y = 564
integer width = 233
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 16711680
long backcolor = 80269524
boolean enabled = false
string text = "Fonts："
boolean focusrectangle = false
end type

type sle_size from singlelineedit within w_font
integer x = 1047
integer y = 548
integer width = 443
integer height = 92
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 16711680
boolean autohscroll = false
borderstyle borderstyle = stylelowered!
boolean righttoleft = true
end type

type lb_style from listbox within w_font
integer x = 1047
integer y = 156
integer width = 443
integer height = 344
integer taborder = 40
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 16711680
boolean hscrollbar = true
boolean vscrollbar = true
string item[] = {"Regular","Italic","Bold","Bold Italic"}
borderstyle borderstyle = stylelowered!
end type

event selectionchanged;Int i , j
i = lb_style.SelectedIndex()
sle_style.Text = lb_style.SelectedItem()
//sle_font.text = lb_font.text(i)
j = lb_style.SetState(i,False)

end event

type sle_style from singlelineedit within w_font
integer x = 1047
integer y = 36
integer width = 443
integer height = 92
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 16711680
boolean autohscroll = false
borderstyle borderstyle = stylelowered!
end type

type st_2 from statictext within w_font
integer x = 827
integer y = 48
integer width = 247
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 16711680
long backcolor = 80269524
boolean enabled = false
string text = "Font："
boolean focusrectangle = false
end type

type lb_font from listbox within w_font
integer x = 224
integer y = 148
integer width = 539
integer height = 664
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 16711680
boolean hscrollbar = true
boolean vscrollbar = true
string item[] = {"Arial","Courier","Fixedsys","Terminal","Arial","Tahoma"}
borderstyle borderstyle = stylelowered!
end type

event selectionchanged;Int i , j
i = lb_font.SelectedIndex()
sle_font.Text = lb_font.SelectedItem()
//sle_font.text = lb_font.text(i)
j = lb_font.SetState(i,False)


end event

type sle_font from singlelineedit within w_font
integer x = 224
integer y = 36
integer width = 539
integer height = 92
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 16711680
boolean autohscroll = false
borderstyle borderstyle = stylelowered!
end type

type st_1 from statictext within w_font
integer x = 27
integer y = 48
integer width = 219
integer height = 60
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 16711680
long backcolor = 67108864
boolean enabled = false
string text = "Fonts："
boolean focusrectangle = false
end type

type cb_cancel from commandbutton within w_font
integer x = 1230
integer y = 712
integer width = 261
integer height = 100
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Cancel"
end type

event clicked;Close(w_font)

end event

type cb_ok from commandbutton within w_font
integer x = 951
integer y = 712
integer width = 261
integer height = 100
integer taborder = 60
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "OK"
end type

event clicked;If sle_font.Text <> "" Then w_file.mle_edit.FaceName = sle_font.Text //Font
If sle_size.Text <> "" Then w_file.mle_edit.TextSize = Integer(sle_size.Text) //size

If sle_style.Text <> "" Then //style
	If sle_style.Text = "Regular"   Then
		w_file.mle_edit.Weight = 400
		w_file.mle_edit.Italic = False
		Return
	End If
	If sle_style.Text = "Italic"   Then
		w_file.mle_edit.Italic = True
	End If
	If sle_style.Text = "Bold"   Then
		w_file.mle_edit.Weight = 700
	End If
	If sle_style.Text = "Bold italic" Then
		w_file.mle_edit.Weight = 700
		w_file.mle_edit.Italic = True
	End If
End If

Close(w_font)

end event

