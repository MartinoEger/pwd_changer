$PBExportHeader$w_pwd_changer.srw
$PBExportComments$Windows Modifica Password Utenti Database
forward
global type w_pwd_changer from window
end type
type st_1 from statictext within w_pwd_changer
end type
type cb_esci from commandbutton within w_pwd_changer
end type
type st_new_pwd_2 from statictext within w_pwd_changer
end type
type st_new_pwd from statictext within w_pwd_changer
end type
type st_old_pwd from statictext within w_pwd_changer
end type
type st_user from statictext within w_pwd_changer
end type
type cbx_nascondi_pwd from checkbox within w_pwd_changer
end type
type sle_new_pwd_2 from singlelineedit within w_pwd_changer
end type
type sle_new_pwd from singlelineedit within w_pwd_changer
end type
type sle_old_pwd from singlelineedit within w_pwd_changer
end type
type sle_user from singlelineedit within w_pwd_changer
end type
type cb_ok from commandbutton within w_pwd_changer
end type
type ln_1 from line within w_pwd_changer
end type
end forward

global type w_pwd_changer from window
integer width = 2514
integer height = 1396
boolean titlebar = true
string title = "Password Changer"
string menuname = "m_pwd_changer"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
event ue_esci ( )
st_1 st_1
cb_esci cb_esci
st_new_pwd_2 st_new_pwd_2
st_new_pwd st_new_pwd
st_old_pwd st_old_pwd
st_user st_user
cbx_nascondi_pwd cbx_nascondi_pwd
sle_new_pwd_2 sle_new_pwd_2
sle_new_pwd sle_new_pwd
sle_old_pwd sle_old_pwd
sle_user sle_user
cb_ok cb_ok
ln_1 ln_1
end type
global w_pwd_changer w_pwd_changer

event ue_esci();Close(This)


end event

on w_pwd_changer.create
if this.MenuName = "m_pwd_changer" then this.MenuID = create m_pwd_changer
this.st_1=create st_1
this.cb_esci=create cb_esci
this.st_new_pwd_2=create st_new_pwd_2
this.st_new_pwd=create st_new_pwd
this.st_old_pwd=create st_old_pwd
this.st_user=create st_user
this.cbx_nascondi_pwd=create cbx_nascondi_pwd
this.sle_new_pwd_2=create sle_new_pwd_2
this.sle_new_pwd=create sle_new_pwd
this.sle_old_pwd=create sle_old_pwd
this.sle_user=create sle_user
this.cb_ok=create cb_ok
this.ln_1=create ln_1
this.Control[]={this.st_1,&
this.cb_esci,&
this.st_new_pwd_2,&
this.st_new_pwd,&
this.st_old_pwd,&
this.st_user,&
this.cbx_nascondi_pwd,&
this.sle_new_pwd_2,&
this.sle_new_pwd,&
this.sle_old_pwd,&
this.sle_user,&
this.cb_ok,&
this.ln_1}
end on

on w_pwd_changer.destroy
if IsValid(MenuID) then destroy(MenuID)
destroy(this.st_1)
destroy(this.cb_esci)
destroy(this.st_new_pwd_2)
destroy(this.st_new_pwd)
destroy(this.st_old_pwd)
destroy(this.st_user)
destroy(this.cbx_nascondi_pwd)
destroy(this.sle_new_pwd_2)
destroy(this.sle_new_pwd)
destroy(this.sle_old_pwd)
destroy(this.sle_user)
destroy(this.cb_ok)
destroy(this.ln_1)
end on

type st_1 from statictext within w_pwd_changer
integer x = 82
integer y = 32
integer width = 2318
integer height = 64
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
boolean italic = true
long textcolor = 33554432
long backcolor = 67108864
string text = "Attenzione! Le informazioni sono sensibili ai caratteri maiuscoli/minuscoli"
alignment alignment = center!
boolean focusrectangle = false
end type

type cb_esci from commandbutton within w_pwd_changer
string tag = "Esci dall~'applicazione"
integer x = 1600
integer y = 976
integer width = 402
integer height = 112
integer taborder = 60
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Esci"
end type

event clicked;Parent.TriggerEvent ( 'ue_esci' ) 
end event

type st_new_pwd_2 from statictext within w_pwd_changer
integer x = 274
integer y = 776
integer width = 544
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Conferma Password"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_new_pwd from statictext within w_pwd_changer
integer x = 274
integer y = 560
integer width = 544
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Nuova Password"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_old_pwd from statictext within w_pwd_changer
integer x = 274
integer y = 356
integer width = 544
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Vecchia Password"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_user from statictext within w_pwd_changer
integer x = 274
integer y = 176
integer width = 544
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Nome utente"
alignment alignment = right!
boolean focusrectangle = false
end type

type cbx_nascondi_pwd from checkbox within w_pwd_changer
string tag = "Nascondi Password"
integer x = 1883
integer y = 572
integer width = 590
integer height = 80
integer taborder = 70
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "nascondi password"
boolean checked = true
end type

event clicked;// Nascondo o mostro i caratteri delle password
If This.Checked = True Then
	sle_old_pwd.password = True
	sle_new_pwd.password = True
	sle_new_pwd_2.password = True
Else
	sle_old_pwd.password = False
	sle_new_pwd.password = False
	sle_new_pwd_2.password = False
End If	
end event

type sle_new_pwd_2 from singlelineedit within w_pwd_changer
string tag = "Conferma Password"
integer x = 832
integer y = 756
integer width = 960
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
boolean password = true
borderstyle borderstyle = stylelowered!
end type

type sle_new_pwd from singlelineedit within w_pwd_changer
string tag = "Nuova Password"
integer x = 832
integer y = 560
integer width = 960
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
boolean password = true
borderstyle borderstyle = stylelowered!
end type

type sle_old_pwd from singlelineedit within w_pwd_changer
string tag = "Vecchia Password"
integer x = 832
integer y = 364
integer width = 960
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
boolean password = true
borderstyle borderstyle = stylelowered!
end type

type sle_user from singlelineedit within w_pwd_changer
string tag = "Nome utente"
integer x = 832
integer y = 168
integer width = 960
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type cb_ok from commandbutton within w_pwd_changer
string tag = "Conferma la modifica della password"
integer x = 338
integer y = 976
integer width = 402
integer height = 112
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "OK"
end type

event clicked;String user, old_pwd, new_pwd, new_pwd_2, comando, tipo_db
Integer controllo

user = sle_user.Text
old_pwd = sle_old_pwd.Text
new_pwd = sle_new_pwd.Text
new_pwd_2 = sle_new_pwd_2.Text

// Controllo la compilazione di tutti i campi
If IsNull ( user ) or user = '' Then
	MessageBox ( "Errore", "Il campo Nome Utente non è compilato. Impossibile proseguire" )
	SetFocus ( sle_user )
	Return -1
ElseIf IsNull ( old_pwd ) or old_pwd = '' Then
	MessageBox ( "Errore", "Il campo Vecchia Password non è compilato. Impossibile proseguire" )
	SetFocus ( sle_old_pwd )
	Return -1
ElseIf IsNull ( new_pwd ) or new_pwd = '' Then
	MessageBox ( "Errore", "Il campo Nuova Password non è compilato. Impossibile proseguire" )
	SetFocus ( sle_new_pwd )
	Return -1
ElseIf IsNull ( new_pwd_2 ) or new_pwd_2 = '' Then
	MessageBox ( "Errore", "Il campo Conferma Password non è compilato. Impossibile proseguire" )
	SetFocus ( sle_new_pwd_2 )
	Return -1
End If

// Controllo che l'utente non sia tra quelli riservati
If Upper ( user ) = 'PGMR' or Upper ( user ) = 'SYSTEM' or Upper ( user ) = 'SYS' or Upper ( user ) = 'DBA' or Upper ( user ) = 'ATEIKON' Then
	MessageBox ( "Errore", "L'utente specificato non è tra quelli modificabili. Impossibile proseguire" )
	Return -1
End If

// Controllo che la vecchia password non sia uguale alla nuova
If old_pwd = new_pwd Then
	MessageBox ( "Errore", "La nuova e la vecchia password coincidono. Impossibile proseguire" )
	Return -1
End If

// Controllo che la nuova password e la conferma siano uguali
If new_pwd <> new_pwd_2 Then
	MessageBox ( "Errore", "La nuova password non è stata confermata correttamente. Impossibile proseguire" )
	Return -1
End If

// Controllo che la nuova password sia di almeno 8 caratteri
If Len ( new_pwd ) < 8 Then
	MessageBox ( "Errore", "La nuova password deve essere di almeno 8 caratteri. Impossibile proseguire" )
	Return -1
End If	
	
// Effettuo una connessione per verificare la vecchia password
SQLCA.DBMS = ProfileString ( "app_siia.ini", "DataBase_Appl", "DBMS", '' )
SQLCA.LogPass = old_pwd
SQLCA.ServerName = ProfileString ( "app_siia.ini", "Database_Appl", "ServerName", '' ) 
SQLCA.LogId = user
SQLCA.AutoCommit = True
SQLCA.Database = ProfileString ( "app_siia.ini", "Database_Appl", "Database", '' )
SQLCA.DBParm = ProfileString ( "app_siia.ini", "Database_Appl", "DbParm", '' )

Connect Using SQLCA;
If SQLCA.SQLCode = -1 Then
	MessageBox ( "Errore", "Connessione non riuscita:~n- La vecchia password non è valida~n- L'utente non esiste~n- Errata configurazione di connessione~n~nImpossibile proseguire~n~nContattare il supporto tecnico Ateikon per la risoluzione dell'errore" )
	Return -1
End If
	
// Modifico la Password dell'utente
tipo_db = ProfileString ( "app_siia.ini", "Database Type", "DataBase", '' )

Choose Case tipo_db
	Case "WATCOM"
		// Se il database è Sql Anywhere 5 o ASA 7
		comando = "grant connect to " + user + " identified by " + new_pwd
	Case "SYBASE"
		// Se il database è ASE
		comando = "sp_password '" + old_pwd + "','" + new_pwd + "','" + user + "'"
	Case "ORACLE"
		// Se il database è Oracle
		comando = 'alter user ' + user + ' identified by ' + new_pwd
End Choose

controllo = MessageBox ( "Attenzione", "Confermare la modifica della password?", Question!, YesNo! )

If controllo = 1 Then
	Execute Immediate :comando Using SQLCA;
	
	If SQLCA.SQLCode <> 0 Then
		MessageBox ( "Errore Database", SQLCA.SQLErrText + "~nContattare il supporto tecnico Ateikon per la risoluzione dell'errore" )
	End If
	
	MessageBox ( "Attenzione", "Password modificata con successo. La modifica avrà effetto dalla prossima connessione" )
	Return 1
End If

Return -1




end event

type ln_1 from line within w_pwd_changer
long linecolor = 33554432
integer linethickness = 4
integer beginx = 1842
integer beginy = 376
integer endx = 1842
integer endy = 864
end type

