VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Begin VB.Form frmRabcd 
   Caption         =   "RABC Tools UI"
   ClientHeight    =   9465
   ClientLeft      =   165
   ClientTop       =   450
   ClientWidth     =   15135
   LinkTopic       =   "Form2"
   ScaleHeight     =   9465
   ScaleWidth      =   15135
   StartUpPosition =   2  'CenterScreen
   Begin MSComctlLib.ListView lvFiltered 
      Height          =   3210
      Left            =   630
      TabIndex        =   15
      Top             =   5535
      Visible         =   0   'False
      Width           =   4020
      _ExtentX        =   7091
      _ExtentY        =   5662
      View            =   3
      LabelEdit       =   1
      LabelWrap       =   -1  'True
      HideSelection   =   0   'False
      FullRowSelect   =   -1  'True
      GridLines       =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Courier"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      NumItems        =   2
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "Name"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "lines"
         Object.Width           =   2540
      EndProperty
   End
   Begin VB.CommandButton cmdfind 
      Caption         =   "Find"
      Height          =   375
      Left            =   8730
      TabIndex        =   14
      Top             =   540
      Width           =   1365
   End
   Begin VB.TextBox txtsearch 
      Height          =   285
      Left            =   945
      TabIndex        =   12
      Top             =   4680
      Width           =   2085
   End
   Begin MSComctlLib.ListView lv 
      Height          =   4290
      Left            =   90
      TabIndex        =   10
      Top             =   4995
      Width           =   4920
      _ExtentX        =   8678
      _ExtentY        =   7567
      View            =   3
      LabelEdit       =   1
      LabelWrap       =   -1  'True
      HideSelection   =   0   'False
      FullRowSelect   =   -1  'True
      GridLines       =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Courier"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      NumItems        =   2
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "Name"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "lines"
         Object.Width           =   2540
      EndProperty
   End
   Begin VB.CommandButton cmdSave 
      Caption         =   "Save"
      Height          =   375
      Left            =   10575
      TabIndex        =   9
      Top             =   540
      Width           =   1320
   End
   Begin VB.CommandButton cmdReasm 
      Caption         =   "re-asm && insert"
      Height          =   375
      Left            =   12015
      TabIndex        =   8
      Top             =   540
      Width           =   2400
   End
   Begin VB.TextBox txtMod 
      Height          =   330
      Left            =   720
      TabIndex        =   7
      Top             =   450
      Width           =   7305
   End
   Begin VB.CommandButton cmdbrowse 
      Caption         =   "..."
      Height          =   330
      Left            =   8190
      TabIndex        =   5
      Top             =   45
      Width           =   735
   End
   Begin MSComctlLib.TreeView tv 
      Height          =   3705
      Left            =   90
      TabIndex        =   4
      Top             =   900
      Width           =   4920
      _ExtentX        =   8678
      _ExtentY        =   6535
      _Version        =   393217
      HideSelection   =   0   'False
      Indentation     =   531
      LabelEdit       =   1
      LineStyle       =   1
      Style           =   7
      Appearance      =   1
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.CommandButton cmdDissassemble 
      Caption         =   "Disasm"
      Height          =   330
      Left            =   9045
      TabIndex        =   3
      Top             =   45
      Width           =   1095
   End
   Begin VB.TextBox txtFile 
      Height          =   285
      Left            =   720
      TabIndex        =   2
      Top             =   90
      Width           =   7305
   End
   Begin RichTextLib.RichTextBox rtf 
      Height          =   6450
      Left            =   5130
      TabIndex        =   0
      Top             =   1035
      Width           =   9465
      _ExtentX        =   16695
      _ExtentY        =   11377
      _Version        =   393217
      HideSelection   =   0   'False
      ScrollBars      =   3
      TextRTF         =   $"frmRabcd.frx":0000
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Courier New"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin MSComctlLib.ListView lv2 
      Height          =   1815
      Left            =   5130
      TabIndex        =   13
      Top             =   7515
      Width           =   9465
      _ExtentX        =   16695
      _ExtentY        =   3201
      View            =   3
      LabelEdit       =   1
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      FullRowSelect   =   -1  'True
      GridLines       =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Courier"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      NumItems        =   2
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "line"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "text"
         Object.Width           =   2540
      EndProperty
   End
   Begin VB.Label Label3 
      Caption         =   "search"
      Height          =   240
      Left            =   135
      TabIndex        =   11
      Top             =   4725
      Width           =   645
   End
   Begin VB.Label Label2 
      Caption         =   "OutFile"
      Height          =   330
      Left            =   90
      TabIndex        =   6
      Top             =   495
      Width           =   600
   End
   Begin VB.Label Label1 
      Caption         =   "File"
      Height          =   285
      Left            =   270
      TabIndex        =   1
      Top             =   90
      Width           =   420
   End
   Begin VB.Menu mnuTools 
      Caption         =   "Tools"
      Begin VB.Menu mnuCommentBlock 
         Caption         =   "Comment Block"
      End
      Begin VB.Menu mnuUncommentBlock 
         Caption         =   "UnComment Block"
      End
      Begin VB.Menu mnuDeleteComments 
         Caption         =   "Strip Commented Blocks"
      End
      Begin VB.Menu cmdRenameMap 
         Caption         =   "Copy Rename Map"
      End
      Begin VB.Menu mnuBackUpCur 
         Caption         =   "Backup Cur File"
      End
      Begin VB.Menu cmdDelOrphans 
         Caption         =   "Delete Orphans"
      End
   End
   Begin VB.Menu mnuPopup 
      Caption         =   "mnuPopup"
      Begin VB.Menu mnuRename 
         Caption         =   "Rename"
      End
      Begin VB.Menu mnuRefsTo 
         Caption         =   "References To"
      End
      Begin VB.Menu mnucopytable 
         Caption         =   "copy table"
      End
   End
End
Attribute VB_Name = "frmRabcd"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim dp As String
Dim curFile As String
Dim curNode As Node
Dim isDirty As Boolean
Dim selli As ListItem
Dim renames() As String

Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Private Const EM_GETFIRSTVISIBLELINE = &HCE
Private Const EM_LINESCROLL = &HB6


'todo: bug - if disasm folder already exists, rabcdasm will not overwrite files so delete directory so not stale

Private Sub mnuBackUpCur_Click()
    
    On Error GoTo hell
    Dim i As Long, n As String, pf As String
    
    If Not FileExists(curFile) Then Exit Sub
    
    pf = GetParentFolder(curFile)
    pf = GetParentFolder(pf) & "rabc_bak"
    If Not FolderExists(pf) Then MkDir pf
    pf = pf & "\"
    
    fn = FileNameFromPath(curFile)
    
    Do
        i = i + 1
        n = pf & "\" & fn & ".bak" & i
    Loop While FileExists(n)
        
    FileCopy curFile, n
    Me.Caption = "Backup saved as: " & n
    
    Exit Sub
hell:
    MsgBox Err.Description, vbExclamation
End Sub

Public Sub LoadFile(pth As String)
    txtFile = pth
    If FileExists(pth) Then cmdDissassemble_Click
    Me.Visible = True
End Sub

Private Sub cmdBrowse_Click()
    Dim x As String
    x = dlg.OpenDialog(AllFiles, , , Me.hwnd)
    If Len(x) = 0 Then Exit Sub
    txtFile = x
    cmdDissassemble_Click
End Sub

Private Sub cmdDelOrphans_Click()
    
    Dim pd As String
    Dim f() As String
    Dim ff() As String
    
    MsgBox "not yet..", vbInformation
    Exit Sub
    
    a = InStr(rtf.Text, "= Orphan methods =")
    If a < 1 Then Exit Sub
    
    tmp = Mid(rtf.Text, a)
    tmp = Split(tmp, "#include")
    pd = GetParentFolder(curFile)
    For Each t In tmp
        t = Replace(t, """", Empty)
        t = Replace(t, vbLf, Empty)
        t = Trim(t)
        If FileExists(pd & "\" & t) Then Kill pd & "\" & t
    Next
    
    rtf.Text = Mid(rtf.Text, 1, a) & vbLf & "end ; program"
    
    f() = GetSubFolders(pd)
    For Each fd In f
        ff() = GetFolderFiles(CStr(fd), , , True)
        If AryIsEmpty(ff) Then DeleteFolder CStr(fd), True
    Next
    
    cmdSave_Click
    cmdDissassemble_Click
        
End Sub

Private Sub cmdDissassemble_Click()

    Erase renames
    
    a = "ExportABC: " & GetCommandOutput(dp & "\abcexport.exe """ & txtFile & """") & vbCrLf
    a = a & "swfbinexport: " & GetCommandOutput(dp & "\swfbinexport.exe """ & txtFile & """")
    rtf.Text = a
    
    Set curNode = Nothing
    tv.Nodes.Clear
    curFile = Empty
    
    Dim tmp() As String, pf As String, i As Long, ff As String, newf As String
    Dim bn As String
    
    bn = FileNameFromPath(txtFile)
    pf = GetParentFolder(txtFile)
    txtMod = pf & "\mod_" & bn
    Me.Caption = bn
    
    tmp() = GetFolderFiles(pf, "*.abc")
    
    If Not AryIsEmpty(tmp) Then
        'now disassemble each abc file..
        For i = 0 To UBound(tmp)
            ff = tmp(i)
            'lv.ListItems.Add , , FileNameFromPath(ff)
            rtf.Text = rtf.Text & GetCommandOutput(dp & "\rabcdasm.exe """ & ff & """") & vbCrLf
            newf = pf & "\" & GetBaseName(FileNameFromPath(ff))
            If FolderExists(newf) Then addsubtree newf
            
        Next
    End If
    
    
    tmp() = GetFolderFiles(pf, "*.bin") 'should be [parent file name]*.bin
    Dim n As Node, n2 As Node
    
    If Not AryIsEmpty(tmp) Then
        Set n = tv.Nodes.Add(, , , "BinaryData")
        For i = 0 To UBound(tmp)
            ff = tmp(i)
            Set n2 = tv.Nodes.Add(n, tvwChild, , FileNameFromPath(ff))
        Next
    End If
    
    
    
End Sub

Private Sub cmdIntegrate_Click()
    MsgBox "todo:"
End Sub

Private Sub cmdfind_Click()
    frmReplace.LaunchReplaceForm rtf
End Sub

Private Sub cmdReasm_Click()
    Dim pf As String, outFile As String
    Dim c As Collection, n As Node
    Dim blockIndex As Integer
    'find .main.asasm for this abc block (each in seperate folder such as file-0/file-0.main.asasm
    
    If FileExists(curFile) Then
        
        If isDirty Then cmdSave_Click

        If InStr(curFile, ".main.asasm") > 0 Then
            pf = curFile
        Else
            If Not curNode.Parent.Parent Is Nothing Then
                blockIndex = CInt(Right(curNode.Parent.Parent, 1))
                Set c = getChildren(curNode.Parent.Parent)
            Else
                blockIndex = CInt(Right(curNode.Parent, 1))
                Set c = getChildren(curNode.Parent)
            End If
            For Each n In c
                If InStr(CStr(n.Tag), ".main.asasm") > 0 Then
                    pf = CStr(n.Tag)
                    Exit For
                End If
            Next
        End If
        
        If Len(pf) = 0 Then
            MsgBox " could not locate the main.asam for this ABC block", vbInformation
            Exit Sub
        End If
        
        t = GetCommandOutput(dp & "\rabcasm.exe """ & pf & """", True, True)
        If Len(t) > 0 Then
            rtf.Text = "Error calling rabcasm: " & vbCrLf & vbCrLf & t
        Else
            outFile = Replace(pf, ".asasm", ".abc")
            'abcreplace file.swf 0 file-0/file-0.main.abc
            
            If Not FileExists(outFile) Then
                MsgBox "recompiled abcfile not found?" & vbCrLf & outFile, vbInformation
                Exit Sub
            End If
            
            If Not FileExists(txtMod) Then
                FileCopy txtFile, txtMod
                If Not FileExists(txtMod) Then
                    MsgBox "could not create txtMod path:" & txtMod, vbInformation
                    Exit Sub
                End If
            End If
            
            t = GetCommandOutput(dp & "\abcreplace.exe """ & txtMod & """ " & blockIndex & " """ & outFile & """", True, True)
            If Len(t) > 0 Then
                rtf.Text = "Error calling abcreplace: " & vbCrLf & vbCrLf & t
                Exit Sub
            End If
            
            MsgBox "success!", vbInformation
        End If
        
    End If
End Sub

Public Function getChildren(n As Node) As Collection
    Dim c As New Collection
    Dim nn As Node
    
    If n.Children > 0 Then
        Set nn = n.FirstSibling
        c.Add tv.Nodes(n.index)
        For i = 1 To n.Children
            c.Add tv.Nodes(n.index + i)
        Next
    End If
    
    Set getChildren = c
        
End Function

Private Sub cmdRenameMap_Click()

    Dim tmp As String
    tmp = Join(renames, vbCrLf)
    If Len(tmp) < 2 Then
        MsgBox "No renames yet?"
        Exit Sub
    End If
    
    Clipboard.Clear
    Clipboard.SetText tmp
    
End Sub

Private Sub cmdSave_Click()
    
    If FileExists(curFile) Then
    
        If Not selli Is Nothing Then
            'they are editing just this one function...
            d = ReadFile(curFile)
            d = Replace(d, selli.Tag, rtf.Text)
            WriteFile curFile, d
            selli.Tag = rtf.Text
        Else
            WriteFile curFile, rtf.Text
        End If
        
        curNode.BackColor = vbBlue
        isDirty = False
    Else
        MsgBox "file not found: " & curFile
    End If
    
End Sub

Private Sub lvFiltered_ItemClick(ByVal Item As MSComctlLib.ListItem)
    Dim li As ListItem
    Set li = Item.Tag
    lv_ItemClick li
End Sub



Private Sub mnuCommentBlock_Click()
    x = rtf.SelText
    If Len(x) = 0 Then Exit Sub
    tmp = Split(x, vbLf)
    For i = 0 To UBound(tmp)
        tmp(i) = ";" & tmp(i)
    Next
    rtf.SelText = Join(tmp, vbLf)
End Sub

Private Sub mnuDeleteComments_Click()
    
    If rtf.SelLength = 0 Then
        x = rtf.Text
    Else
        x = rtf.SelText
    End If
    
    If Len(x) = 0 Then Exit Sub
    
    Dim ret()
    tmp = Split(x, vbLf)
    For i = 0 To UBound(tmp)
        If VBA.Left(Trim(tmp(i)), 1) = ";" Then
            DoEvents
        Else
            push ret, tmp(i)
        End If
    Next
    
    If rtf.SelLength = 0 Then
        rtf.Text = Join(ret, vbLf)
    Else
        rtf.SelText = Join(ret, vbLf)
    End If
    
 
    
End Sub

Private Sub mnuUncommentBlock_Click()
    x = rtf.SelText
    If Len(x) = 0 Then Exit Sub
    tmp = Split(x, vbLf)
    For i = 0 To UBound(tmp)
        If VBA.Left(tmp(i), 1) = ";" Then
            If Len(tmp(i)) = 0 Then tmp(i) = Empty Else tmp(i) = Mid(tmp(i), 2)
        End If
    Next
    rtf.SelText = Join(tmp, vbLf)
End Sub

Private Sub txtsearch_Change()

    Dim li As ListItem, li2 As ListItem
    Dim d As String
    Dim a As String
    
    If Len(txtsearch) = 0 Then
        lvFiltered.Visible = False
        Exit Sub
    End If
    
    lvFiltered.ListItems.Clear
    lvFiltered.Visible = True
    
    For Each li In lv.ListItems
        d = li.Tag
        If InStr(1, d, txtsearch, vbTextCompare) > 0 Then
            Set li2 = lvFiltered.ListItems.Add(, , li.Text)
            li2.SubItems(1) = li.SubItems(1)
            Set li2.Tag = li 'note difference! so we cal forward lv_itemclick(li2.tag)
        End If
    Next
    
    
End Sub

Private Sub Form_Load()
    dp = App.path & "\RABCDAsm_v1.17"
    If Not FolderExists(dp) Then
        cmdDissassemble.Enabled = False
        MsgBox "could not find RABCDAsm_v1.17 folder", vbInformation
    End If
    lvFiltered.Move lv.Left, lv.Top, lv.Width, lv.Height
    lv.ColumnHeaders(1).Width = lv.Width - lv.ColumnHeaders(2).Width - 90
    mnuPopup.Visible = False
    txtFile = GetSetting("rabcd", "gui", "txtfile")
End Sub

Sub addsubtree(pth As String, Optional pn As Node = Nothing)
    Dim n As Node, n2 As Node, ff() As String
    
    If pn Is Nothing Then
        Set n = tv.Nodes.Add(, , , FileNameFromPath(pth))
    Else
        Set n = tv.Nodes.Add(pn, tvwChild, , FileNameFromPath(pth))
    End If
    
    ff() = GetFolderFiles(pth)
    If Not AryIsEmpty(ff) Then
        For Each f In ff
            Set n2 = tv.Nodes.Add(n, tvwChild, , FileNameFromPath(f))
            n2.Tag = f
        Next
    End If
    
    ff() = GetSubFolders(pth)
    If Not AryIsEmpty(ff) Then
        For Each f In ff
            addsubtree CStr(f), n
        Next
    End If
    
End Sub

Private Sub Form_Resize()
    On Error Resume Next
    rtf.Width = Me.Width - rtf.Left - 200
    lv.Height = Me.Height - lv.Top - 400
    lvFiltered.Height = lv.Height
    lv2.Top = Me.Height - lv2.Height - 400
    rtf.Height = Me.Height - rtf.Top - 400 - lv2.Height
    lv2.Width = rtf.Width
    LV_LastColumnResize lv2
End Sub

Private Sub Form_Unload(Cancel As Integer)
     SaveSetting "rabcd", "gui", "txtfile", txtFile.Text
End Sub

Private Sub lv_ColumnClick(ByVal ColumnHeader As MSComctlLib.ColumnHeader)
    LV_ColumnSort lv, ColumnHeader
End Sub

Private Sub lvfiltered_ColumnClick(ByVal ColumnHeader As MSComctlLib.ColumnHeader)
    LV_ColumnSort lvFiltered, ColumnHeader
End Sub

Private Sub lv_MouseUp(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If Button = 2 Then PopupMenu mnuPopup
End Sub

Private Sub lvfiltered_MouseUp(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If Button = 2 Then PopupMenu mnuPopup
End Sub

Private Sub lv2_ColumnClick(ByVal ColumnHeader As MSComctlLib.ColumnHeader)
    LV_ColumnSort lv2, ColumnHeader
End Sub

Private Sub lv_ItemClick(ByVal Item As MSComctlLib.ListItem)
    
    Set selli = Item
    rtf.Text = Item.Tag
    ScrollToLine rtf, 0
    
    Dim li As ListItem
    Dim tmp As String
    
    lv2.ListItems.Clear
    
    x = Split(rtf.Text, vbLf)
    For i = 0 To UBound(x)
        If InStr(x(i), "callprop") > 0 Or InStr(x(i), "setprop") > 0 Or InStr(x(i), "getprop") > 0 Then
            Set li = lv2.ListItems.Add(, , VBA.Right("        " & i, 5))
            tmp = Replace(x(i), "qname(", Empty, , , vbTextCompare)
            tmp = Replace(tmp, "packagenamespace(", Empty, , , vbTextCompare)
            tmp = Replace(tmp, "namespace(", Empty, , , vbTextCompare)
            tmp = Replace(tmp, ")", Empty, , , vbTextCompare)
            tmp = Replace(tmp, "staticprotectedns(", Empty, , , vbTextCompare)
            tmp = Replace(tmp, "multinamel(", Empty, , , vbTextCompare)
            tmp = Replace(tmp, "http://adobe.com/AS3/", Empty, , , vbTextCompare)
            tmp = Replace(tmp, "Private""", """", , , vbTextCompare)
            tmp = Replace(tmp, "Protected""", """", , , vbTextCompare)
            tmp = Replace(tmp, "callproperty", "call", , , vbTextCompare)
            tmp = Replace(tmp, "setproperty", "set", , , vbTextCompare)
            tmp = Replace(tmp, "getproperty", "get", , , vbTextCompare)
            
            li.SubItems(1) = Trim(tmp)
        End If
    Next
    
End Sub

Private Sub lv2_ItemClick(ByVal Item As MSComctlLib.ListItem)
    On Error Resume Next
    ScrollToLine rtf, CLng(Item.Text)
End Sub

Private Sub mnucopytable_Click()
    Dim li As ListItem
    Dim t() As String
    
    For Each li In lv.ListItems
        push t, li.Text & vbTab & li.SubItems(1)
    Next
    
    Clipboard.Clear
    Clipboard.SetText Join(t, vbCrLf)
    
End Sub

Private Sub mnuRefsTo_Click()
   If selli Is Nothing Then Exit Sub
   txtsearch = selli.Text
End Sub

Private Sub mnuRename_Click()

    If selli Is Nothing Then Exit Sub
    
redo:
    curname = selli.Text
    newname = InputBox("Rename " & curname & " to: ", , curname)
    If Len(newname) = 0 Then Exit Sub
    
    Dim li As ListItem
    For Each li In lv.ListItems
        If li.Text <> curname Then
            If InStr(1, li.Text, newname, vbTextCompare) > 0 Or InStr(1, newname, li.Text, vbTextCompare) > 0 Then
                MsgBox "Name is not unique enough try again..", vbInformation
                GoTo redo
            End If
        End If
    Next
    
    push renames, curname & " -> " & newname
    
    f = ReadFile(curFile)
    f = Replace(f, curname, newname)
    WriteFile curFile, f
    tv_NodeClick curNode
    'todo scan all other script files from node tree...
    
End Sub

Private Sub rtf_Change()
    isDirty = True
End Sub

Private Sub tv_NodeClick(ByVal Node As MSComctlLib.Node)
    Dim f As String
    
    Set curNode = Node
    Set selli = Nothing
    curFile = Empty
    lv.ListItems.Clear
    lv2.ListItems.Clear
    lvFiltered.ListItems.Clear
    lvFiltered.Visible = False
    
    f = CStr(Node.Tag)
    
    If FileExists(f) Then
        rtf.Text = ReadFile(f)
        curFile = f
        isDirty = False
        rtf.SelStart = 1
        loadMethods
    End If
    
    cmdDelOrphans.Enabled = CBool(InStr(Node.Text, ".main.asasm") > 0)
    If cmdDelOrphans.Enabled Then
        cmdDelOrphans.Enabled = CBool(InStr(rtf.Text, "= Orphan methods =") > 0)
    End If
    
    
    
End Sub

Sub loadMethods()
    Dim li As ListItem
    Dim tmp As String
    Dim i As Long
    Dim pass As Long
    
    'name, line , size, tag: body
    
    lv.ListItems.Clear
    lv2.ListItems.Clear
    lvFiltered.ListItems.Clear
    
    ma = "method" & vbLf & "    name "
    
scanAgain:
    a = InStr(rtf.Text, ma)
    Do While a > 0
        a = a + Len(ma)
        b = InStr(a, rtf.Text, vbLf)
        tmp = Trim(Mid(rtf.Text, a, b - a))
        tmp = Replace(tmp, """", Empty)
        Set li = lv.ListItems.Add(, , tmp)
        b = InStr(b, rtf.Text, "end ; code")
        tmp = Mid(rtf.Text, a, b - a)
        li.SubItems(1) = VBA.Right("        " & CountOccurances(tmp, vbLf), 8)
        li.Tag = tmp
        a = InStr(b, rtf.Text, ma)
    Loop
    pass = pass + 1
    
    If pass = 1 Then
        ma = "method" & vbLf & "   refid"
        GoTo scanAgain
    End If
    
    If pass = 2 Then
        ma = "iinit" & vbLf & "   refid"
        GoTo scanAgain
    End If
    
    If pass = 3 Then
        ma = "cinit" & vbLf & "  refid"
        GoTo scanAgain
    End If
    
    If pass = 4 Then
        ma = "method" & vbLf & "    refid"
        GoTo scanAgain
    End If
    
    
    If Len(txtsearch) > 0 Then txtsearch_Change
    
End Sub

'regular methods..
'  trait method QName(PrivateNamespace("class_7"), "method_34") flag FINAL
'   method
'    name "method_34"
'    refid "class_7/instance/class_7/instance/method_34"
'    returns QName(PackageNamespace("", "#1"), "Boolean")
'    body
'     maxstack 6
'     localcount 6
'     initscopedepth 0
'     maxscopedepth 1
'     code
'
'
'        end ; code
'    end ; body
'   end ; method
'  end ; trait
  
'static methods..
'  method
'   refid "Util/class/doInit"



Function CountOccurances(it, find) As Integer
    Dim tmp() As String
    If InStr(1, it, find, vbTextCompare) < 1 Then CountOccurances = 0: Exit Function
    tmp = Split(it, find, , vbTextCompare)
    CountOccurances = UBound(tmp)
End Function

Sub ScrollToLine(rtf As RichTextBox, Number As Long)
    Dim curLine As Long, Shift As Long
    curLine = SendMessage(rtf.hwnd, EM_GETFIRSTVISIBLELINE, 0&, ByVal 0&)
    Shift = (Number - 1) - curLine
    Call SendMessage(rtf.hwnd, EM_LINESCROLL, 0&, ByVal Shift)
End Sub
    
    
