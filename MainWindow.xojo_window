#tag DesktopWindow
Begin DesktopWindow MainWindow
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF
   Composite       =   False
   DefaultLocation =   2
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   Height          =   800
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   1095792639
   MenuBarVisible  =   False
   MinimumHeight   =   650
   MinimumWidth    =   1000
   Resizeable      =   True
   Title           =   "Binary Wave Generator"
   Type            =   0
   Visible         =   True
   Width           =   1000
   Begin DesktopTabPanel MainTabPanel
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   800
      Index           =   -2147483648
      Italic          =   False
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Panels          =   ""
      Scope           =   0
      SmallTabs       =   False
      TabDefinition   =   "Run\rGraph"
      TabIndex        =   30
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   0
      Transparent     =   False
      Underline       =   False
      Value           =   1
      Visible         =   True
      Width           =   1000
      Begin DesktopRectangle RectForStopInfo
         AllowAutoDeactivate=   True
         BorderColor     =   &c000000
         BorderThickness =   1.0
         CornerSize      =   0.0
         Enabled         =   True
         FillColor       =   &cFFFFFFFF
         Height          =   164
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Left            =   437
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   40
         TabPanelIndex   =   1
         Tooltip         =   ""
         Top             =   442
         Transparent     =   False
         Visible         =   True
         Width           =   298
      End
      Begin DesktopRectangle RectForCaseFile
         AllowAutoDeactivate=   True
         BorderColor     =   &c000000
         BorderThickness =   1.0
         CornerSize      =   0.0
         Enabled         =   True
         FillColor       =   &cFFFFFFFF
         Height          =   56
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Left            =   249
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   39
         TabPanelIndex   =   1
         Tooltip         =   ""
         Top             =   49
         Transparent     =   True
         Visible         =   True
         Width           =   486
         Begin DesktopLabel CaptionForCaseProgress
            AllowAutoDeactivate=   True
            Bold            =   False
            Enabled         =   True
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            Height          =   20
            Index           =   -2147483648
            InitialParent   =   "RectForCaseFile"
            Italic          =   False
            Left            =   400
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   0
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Progress:"
            TextAlignment   =   0
            TextColor       =   &c000000
            Tooltip         =   ""
            Top             =   66
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   68
         End
      End
      Begin DesktopRectangle RectForRunInfo
         AllowAutoDeactivate=   True
         BorderColor     =   &c000000
         BorderThickness =   1.0
         CornerSize      =   0.0
         Enabled         =   True
         FillColor       =   &cFFFFFFFF
         Height          =   318
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Left            =   437
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   38
         TabPanelIndex   =   1
         Tooltip         =   ""
         Top             =   114
         Transparent     =   False
         Visible         =   True
         Width           =   298
      End
      Begin DesktopListBox ParamNameListBox
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   False
         AllowResizableColumns=   False
         AllowRowDragging=   False
         AllowRowReordering=   False
         Bold            =   False
         ColumnCount     =   1
         ColumnWidths    =   "80"
         DefaultRowHeight=   26
         DropIndicatorVisible=   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         GridLineStyle   =   3
         HasBorder       =   True
         HasHeader       =   True
         HasHorizontalScrollbar=   False
         HasVerticalScrollbar=   False
         HeadingIndex    =   -1
         Height          =   492
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         InitialValue    =   "Parameter\nM (sols)\nδ\nTorb (s)\ntc (y)\nλ0\nχ1	\nθ1 (°)\nφ1 (°)\nχ2\nθ2 (°)\nφ2 (°)\nβ (°)	\nψ (°)\nR (ly)\nZ\nPN Order\nΔT (s)\nDuration (y)"
         Italic          =   False
         Left            =   249
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         RequiresSelection=   False
         RowSelectionType=   0
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   114
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   80
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin DesktopLabel CaptionForGraphChoiceLabel
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Graph This Variable:"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   47
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   129
      End
      Begin DesktopPopupMenu GraphChoicePopupMenu
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   26
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         InitialValue    =   ""
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   75
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   155
      End
      Begin DesktopListBox CaseListBox
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   True
         AllowResizableColumns=   True
         AllowRowDragging=   False
         AllowRowReordering=   False
         Bold            =   False
         ColumnCount     =   1
         ColumnWidths    =   "80"
         DefaultRowHeight=   26
         DropIndicatorVisible=   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         GridLineStyle   =   3
         HasBorder       =   True
         HasHeader       =   True
         HasHorizontalScrollbar=   False
         HasVerticalScrollbar=   False
         HeadingIndex    =   -1
         Height          =   492
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         InitialValue    =   "Case 1\n10000\n0.1\n500\n\n0\n0\n0\n0\n0\n0\n0\n0\n0\n1.0e7\n0\n3, 7\n10\n1.0"
         Italic          =   False
         Left            =   327
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         RequiresSelection=   False
         RowSelectionType=   0
         Scope           =   0
         TabIndex        =   7
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   114
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   83
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin DesktopLabel CaptionForStatusLabel
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   457
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   9
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Status:"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   184
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   49
      End
      Begin DesktopLabel CaptionForRunTimeLabel
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   457
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   12
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Computation Time (s):"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   262
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   156
      End
      Begin DesktopLabel ValueOfRunTimeLabel
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   598
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   13
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   278
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   117
      End
      Begin DesktopLabel CaptionForStepNumLabel
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   457
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   14
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Current Step Number:"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   292
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   156
      End
      Begin DesktopLabel ValueOfStepNumberLabel
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   598
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   15
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   312
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   117
      End
      Begin DesktopLabel CaptionForSimTimeLabel
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   457
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   16
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Simulation Time (y):"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   322
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   156
      End
      Begin DesktopLabel ValueOfSimTimeLabel
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   598
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   17
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   340
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   117
      End
      Begin DesktopLabel CaptionForVLabel
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   457
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   20
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Current PN Factor v:"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   353
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   156
      End
      Begin DesktopLabel ValueOfVLabel
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   598
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   21
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   372
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   114
      End
      Begin DesktopLabel CaptionForStepRatioLabel
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   457
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   22
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Source/Display Step Ratio:"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   382
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   169
      End
      Begin DesktopLabel ValueOfStepRatioLabel
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   631
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   23
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   400
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   84
      End
      Begin DesktopLabel ValueOfStatusLabel
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   521
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   26
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Not Started"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   166
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   164
      End
      Begin DesktopLabel CaptionForStopReasonLabel
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   457
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   27
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Reason For Stopping:"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   444
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   156
      End
      Begin ProgressBar CaseProgressBar
         AllowAutoDeactivate=   True
         Enabled         =   True
         Height          =   14
         Indeterminate   =   False
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Left            =   457
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumValue    =   100
         Scope           =   0
         TabIndex        =   28
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   222
         Transparent     =   True
         Value           =   0.0
         Visible         =   True
         Width           =   259
      End
      Begin DesktopButton StartStopButton
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "Run"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   457
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   29
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   134
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   131
      End
      Begin DesktopLabel ValueOfStopReasonLabel
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   47
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   457
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   True
         Scope           =   0
         Selectable      =   False
         TabIndex        =   31
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   467
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   160
      End
      Begin DesktopCheckBox RunFileCheckBox
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Run Case File"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   267
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   32
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   67
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         VisualState     =   0
         Width           =   120
      End
      Begin DesktopLabel CaptionForProgressLabel
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   457
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   33
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Case Progress:"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   198
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   99
      End
      Begin ProgressBar FileProgressBar
         AllowAutoDeactivate=   True
         Enabled         =   True
         Height          =   12
         Indeterminate   =   False
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Left            =   474
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MaximumValue    =   100
         Scope           =   0
         TabIndex        =   35
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   69
         Transparent     =   True
         Value           =   0.0
         Visible         =   False
         Width           =   242
      End
      Begin DesktopLabel ValueOfActualTimeLabel
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   457
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   37
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   551
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   156
      End
      Begin DesktopSlider StartSlider
         AllowAutoDeactivate=   True
         AllowLiveScrolling=   True
         Enabled         =   True
         Height          =   30
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Left            =   354
         LineStep        =   1
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumValue    =   500
         MinimumValue    =   0
         PageStep        =   20
         Scope           =   0
         TabIndex        =   13
         TabPanelIndex   =   2
         TabStop         =   True
         TickMarkStyle   =   0
         Tooltip         =   ""
         Top             =   45
         Transparent     =   False
         Value           =   0
         Visible         =   True
         Width           =   500
      End
      Begin DesktopLabel CaptionForStartSliderLabel
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   202
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   15
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Start (y):"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   47
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   60
      End
      Begin DesktopLabel CaptionForActualTimeLabel
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   457
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   36
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Actual Duration (y):"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   526
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   156
      End
      Begin PlotCanvas MyPlotCanvas
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         DrawGrid        =   True
         Enabled         =   True
         Height          =   667
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Left            =   20
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MarginBottom    =   20.0
         MarginLeft      =   20.0
         MarginRight     =   40.0
         MarginTop       =   20.0
         Scope           =   0
         TabIndex        =   16
         TabPanelIndex   =   2
         TabStop         =   True
         TheTitle        =   ""
         TitleFont       =   "System"
         TitleFontSize   =   18.0
         TitleOffset     =   15.0
         Tooltip         =   ""
         Top             =   113
         Transparent     =   True
         Visible         =   True
         Width           =   960
      End
      Begin DesktopLabel ValueOfGraphStartLabel
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   263
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   17
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "0.00000000"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   47
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   82
      End
      Begin DesktopLabel CaptionForGraphWidthLabel
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   597
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   18
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Graph Width / All Data:"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   79
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   141
      End
      Begin DesktopPopupMenu ScaleMenu
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         InitialValue    =   "1.0\n0.5\n0.2\n0.1\n0.05\n0.02\n0.01\n0.005\n0.002\n0.001\n0.0005\n0.0002\n0.0001\n0.00005\n0.00001\n"
         Italic          =   False
         Left            =   750
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   9
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   80
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   91
      End
      Begin DesktopButton BumpUpButton
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "Up"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   283
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   19
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   79
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   51
      End
      Begin DesktopLabel CaptionForBumpLabel
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   202
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   20
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Bump Start"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   79
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   77
      End
      Begin DesktopButton BumpDownButton
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "Down"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   346
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   21
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   79
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   51
      End
      Begin DesktopLabel CaptionForBumpTypeLabel
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   409
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   22
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "by"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   79
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   24
      End
      Begin DesktopPopupMenu BumpTypePopupMenu
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         InitialValue    =   "Single Step\nWindow Width\n10 Steps\n100 Steps\n1000 Steps\n0.00001 Of Span\n0.0001 Of Span\n0.001 Of Span\n0.01 Of Span\n0.1 Of Span"
         Italic          =   False
         Left            =   437
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   23
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   81
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   128
      End
      Begin DesktopRectangle RectforSaveInfo
         AllowAutoDeactivate=   True
         BorderColor     =   &c000000
         BorderThickness =   1.0
         CornerSize      =   0.0
         Enabled         =   True
         FillColor       =   &cFFFFFFFF
         Height          =   115
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Left            =   249
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   41
         TabPanelIndex   =   1
         Tooltip         =   ""
         Top             =   620
         Transparent     =   False
         Visible         =   True
         Width           =   486
         Begin DesktopLabel Label1
            AllowAutoDeactivate=   True
            Bold            =   False
            Enabled         =   True
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            Height          =   20
            Index           =   -2147483648
            InitialParent   =   "RectforSaveInfo"
            Italic          =   False
            Left            =   262
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   0
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Save Data:"
            TextAlignment   =   0
            TextColor       =   &c000000
            Tooltip         =   ""
            Top             =   627
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   74
         End
         Begin DesktopCheckBox CheckBoxForHP
            AllowAutoDeactivate=   True
            Bold            =   False
            Caption         =   "h+"
            Enabled         =   True
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            Height          =   20
            Index           =   -2147483648
            InitialParent   =   "RectforSaveInfo"
            Italic          =   False
            Left            =   350
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   ""
            Top             =   627
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            VisualState     =   0
            Width           =   49
         End
         Begin DesktopCheckBox CheckBoxForHX
            AllowAutoDeactivate=   True
            Bold            =   False
            Caption         =   "hx"
            Enabled         =   True
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            Height          =   20
            Index           =   -2147483648
            InitialParent   =   "RectforSaveInfo"
            Italic          =   False
            Left            =   411
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   ""
            Top             =   627
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            VisualState     =   0
            Width           =   50
         End
         Begin DesktopCheckBox CheckBoxForV
            AllowAutoDeactivate=   True
            Bold            =   False
            Caption         =   "v"
            Enabled         =   True
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            Height          =   20
            Index           =   -2147483648
            InitialParent   =   "RectforSaveInfo"
            Italic          =   False
            Left            =   473
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   3
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   ""
            Top             =   626
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            VisualState     =   0
            Width           =   46
         End
         Begin DesktopCheckBox CheckBoxForAlpha
            AllowAutoDeactivate=   True
            Bold            =   False
            Caption         =   "α"
            Enabled         =   True
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            Height          =   20
            Index           =   -2147483648
            InitialParent   =   "RectforSaveInfo"
            Italic          =   False
            Left            =   531
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   4
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   ""
            Top             =   627
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            VisualState     =   0
            Width           =   48
         End
         Begin DesktopCheckBox CheckBoxForIota
            AllowAutoDeactivate=   True
            Bold            =   False
            Caption         =   "ι"
            Enabled         =   True
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            Height          =   20
            Index           =   -2147483648
            InitialParent   =   "RectforSaveInfo"
            Italic          =   False
            Left            =   591
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   5
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   ""
            Top             =   627
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            VisualState     =   0
            Width           =   42
         End
         Begin DesktopCheckBox CheckBoxForChi1x
            AllowAutoDeactivate=   True
            Bold            =   False
            Caption         =   "χ1x"
            Enabled         =   True
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            Height          =   20
            Index           =   -2147483648
            InitialParent   =   "RectforSaveInfo"
            Italic          =   False
            Left            =   350
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   6
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   ""
            Top             =   659
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            VisualState     =   0
            Width           =   50
         End
         Begin DesktopCheckBox CheckBoxForChi1y
            AllowAutoDeactivate=   True
            Bold            =   False
            Caption         =   "χ1y"
            Enabled         =   True
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            Height          =   20
            Index           =   -2147483648
            InitialParent   =   "RectforSaveInfo"
            Italic          =   False
            Left            =   410
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   7
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   ""
            Top             =   659
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            VisualState     =   0
            Width           =   49
         End
         Begin DesktopCheckBox CheckBoxForChi1z
            AllowAutoDeactivate=   True
            Bold            =   False
            Caption         =   "χ1z"
            Enabled         =   True
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            Height          =   20
            Index           =   -2147483648
            InitialParent   =   "RectforSaveInfo"
            Italic          =   False
            Left            =   469
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   8
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   ""
            Top             =   659
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            VisualState     =   0
            Width           =   50
         End
         Begin DesktopCheckBox CheckBoxForChi2x
            AllowAutoDeactivate=   True
            Bold            =   False
            Caption         =   "χ2x"
            Enabled         =   True
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            Height          =   20
            Index           =   -2147483648
            InitialParent   =   "RectforSaveInfo"
            Italic          =   False
            Left            =   533
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   9
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   ""
            Top             =   659
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            VisualState     =   0
            Width           =   52
         End
         Begin DesktopCheckBox CheckBoxForChi2y
            AllowAutoDeactivate=   True
            Bold            =   False
            Caption         =   "χ2y"
            Enabled         =   True
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            Height          =   20
            Index           =   -2147483648
            InitialParent   =   "RectforSaveInfo"
            Italic          =   False
            Left            =   591
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   10
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   ""
            Top             =   659
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            VisualState     =   0
            Width           =   53
         End
         Begin DesktopPopupMenu SaveToMenu
            AllowAutoDeactivate=   True
            Bold            =   False
            Enabled         =   True
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            Height          =   20
            Index           =   -2147483648
            InitialParent   =   "RectforSaveInfo"
            InitialValue    =   "Save to memory\nSave to hard drive"
            Italic          =   False
            Left            =   531
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            SelectedRowIndex=   0
            TabIndex        =   12
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   ""
            Top             =   695
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   168
         End
         Begin DesktopButton SelectAllButton
            AllowAutoDeactivate=   True
            Bold            =   False
            Cancel          =   False
            Caption         =   "Select All"
            Default         =   False
            Enabled         =   True
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            Height          =   20
            Index           =   -2147483648
            InitialParent   =   "RectforSaveInfo"
            Italic          =   False
            Left            =   348
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            MacButtonStyle  =   0
            Scope           =   0
            TabIndex        =   13
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   ""
            Top             =   691
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
      End
      Begin DesktopCheckBox CheckBoxForPsi
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Ψ"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   647
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   42
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   628
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         VisualState     =   0
         Width           =   53
      End
      Begin DesktopCheckBox CheckBoxForChi2z
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "χ2z"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   647
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   43
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   660
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         VisualState     =   0
         Width           =   48
      End
   End
   Begin Timer InterfaceUpdateTimer
      Enabled         =   True
      Index           =   -2147483648
      LockedInPosition=   False
      Period          =   500
      RunMode         =   0
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin MainThreadClass MainThread
      DebugIdentifier =   ""
      Index           =   -2147483648
      LockedInPosition=   False
      Priority        =   5
      Scope           =   0
      StackSize       =   0
      TabPanelIndex   =   0
      ThreadID        =   0
      ThreadState     =   0
      Type            =   0
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Opening()
		  UpdateTc
		  
		  // Initialize the GraphChoicePopupMenu items
		  'Var tempCase As New CaseInfoClass
		  'Setting = True
		  'GraphChoicePopupMenu.RemoveAllRows
		  'Var theNames() As String = tempCase.GetPlotNames
		  'For i As Integer = 0 To theNames.LastIndex
		  'GraphChoicePopupMenu.AddRow(theNames(i))
		  'Next
		  'Setting = False
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function ConvertToDegrees(Value As Double) As Double
		  Var degFromRad As Double = 180.0/3.14159265358979
		  If Value.IsNotANumber Then
		    Return Value
		  Else
		    Return Value*degFromRad
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DoBump(Down as Boolean)
		  Var trialStep As Integer
		  Select Case BumpTypePopupMenu.SelectedRowText
		  Case "Single Step"
		    trialStep = 1
		  Case "Window Width"
		    Var selectedScale As Double = ScaleMenu.SelectedRowText.ToDouble
		    trialStep = Round(selectedScale * PlotTimes.LastIndex)
		  Case "10 Steps"
		    trialStep = 10
		  Case "100 Steps"
		    trialStep = 100
		  Case "1000 Steps"
		    trialStep = 1000
		  Case "0.00001 Of Span"
		    trialStep = Round(0.00001*PlotTimes.LastIndex)
		  Case "0.0001 Of Span"
		    trialStep = Round(0.0001*PlotTimes.LastIndex)
		  Case "0.001 Of Span"
		    trialStep = Round(0.001*PlotTimes.LastIndex)
		  Case "0.01 Of Span"
		    trialStep = Round(0.01*PlotTimes.LastIndex)
		  Case "0.1 of Span"
		    trialStep = Round(0.01*PlotTimes.LastIndex)
		  End Select
		  If Down Then
		    PlotStartIndex = PlotStartIndex - trialStep
		    If PlotStartIndex < 0 Then PlotStartIndex = 0
		  Else
		    PlotStartIndex = PlotStartIndex + trialStep
		    If PlotStartIndex > PlotTimes.LastIndex - 5 Then PlotStartIndex = PlotTimes.LastIndex - 5
		  End If
		  Setting = True
		  StartSlider.Value = Round(PlotStartIndex/PlotTimes.LastIndex*StartSlider.MaximumValue)
		  Setting = False
		  UpdatePlot
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DoStart()
		  // Start running a case or cases
		  TheCases.ResizeTo(-1)  // Clear out any pre-existing cases
		  if RunFileCheckBox.Value then // if we are running cases from a file
		    GetCasesFromFile // get the cases from the file
		    OutputFile = FolderItem.ShowSaveFileDialog(FileTypeGroup1.Text, "Untitled.txt") // define an output file
		    If OutputFile = Nil Then Return // bail out if the user has cancelled
		  Else
		    TheCases.Add(GetDisplayCase)  // if we are running from the screen, get screen values
		  End if
		  AllCasesDone = False // clear this flag: we are just starting
		  ValueOfStatusLabel.Text = "Running"  // let the user know we are running
		  ValueOfStopReasonLabel.Text = ""  // clear any previous stop information
		  MainThread.LoadCases(TheCases)  // load the case or cases into the main thread
		  MainThread.Priority = Thread.HighPriority // set thread priority as high as possible
		  MainThread.Start // start the main thread
		  InterfaceUpdateTimer.RunMode = Timer.RunModes.Multiple  // set the interface timer running
		  //  Each time the interface timer fires, we update the user interface
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DoStop()
		  // Perform a manual stop of the current run
		  MainThread.Stop
		  InterfaceUpdateTimer.RunMode = Timer.RunModes.Multiple
		  ValueOfStatusLabel.Text = "Stopped"
		  ValueOfStopReasonLabel.Text = "Manual Stop"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetCaseFromValues(Values() As String) As CaseInfoClass
		  GetSaveValues(values) // get the list of variable names to save from the interface
		  Var thisCase As New CaseInfoClass
		  Var Flag As Boolean
		  thisCase.M = Values(0).ToDouble
		  thisCase.δ = Values(1).ToDouble
		  thisCase.T0 = Values(2).ToDouble
		  thisCase.λ0 = Values(3).ToDouble
		  thisCase.χ1 = Values(4).ToDouble
		  thisCase.θ1 = Values(5).ToDouble
		  thisCase.φ1 = Values(6).ToDouble
		  thisCase.χ2 = Values(7).ToDouble
		  thisCase.θ2 = Values(8).ToDouble
		  thisCase.φ2 = Values(9).ToDouble
		  thisCase.β = Values(10).ToDouble
		  thisCase.ψ = Values(11).ToDouble
		  thisCase.R = Values(12).ToDouble
		  thisCase.Z = Values(13).ToDouble
		  thisCase.PNOrder = Values(14).NthField(",",0)
		  thisCase.PNForV = Values(14).NthField(",",1)
		  thisCase.ΔT = Values(15).ToDouble
		  thisCase.RunDuration = Values(16).ToDouble
		  thisCase.SetSaveNames(Values, 17)
		  thisCase.SaveToFile = SaveToMenu.SelectedRowIndex = 1
		  thisCase.FinishConstruction
		  Return thisCase
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetCasesFromFile()
		  // To make a text file that can be read by this code:
		  //    Rows should be parameters, in the order shown in the CaseListBox (ignoring tc), separated by tabs.
		  
		  Var f As FolderItem
		  Var textInput As TextInputStream
		  Var rowFromFile As String
		  
		  // Show a dialog box to open the text file containing the data
		  f = FolderItem.ShowOpenFileDialog(FileTypeGroup1.Text)
		  
		  If f <> Nil Then
		    textInput = TextInputStream.Open(f)  // open it
		    textInput.Encoding = Encodings.UTF8   // interpret it as having UTF8 encoding
		    Do
		      rowFromFile = textInput.ReadLine // get a line corresponding to the case
		      Var values() As String = rowFromFile.ToArray(String.Chr(9)) // convert the tab-delimited list to an array
		      Var thisCase As CaseInfoClass = GetCaseFromValues(values)  // create the case
		      thisCase.FromFile = True // this flag will be set if we have one or more cases to process
		      TheCases.Add(thisCase)  // add the case to the list to execute
		    Loop Until textInput.EndOfFile  // and keep going until we reach the end of the file
		    textInput.Close
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDisplayCase() As CaseInfoClass
		  Var theValues() As String
		  Var theValue As String
		  For i As Integer = 0 to CaseListBox.LastRowIndex // for all entries in the list box
		    theValue = CaseListBox.CellTextAt(i) // get the text entered in the list box
		    if i <> 3 Then theValues.Add(theValue) // skip over an entry corresponding to tc
		  Next
		  Return GetCaseFromValues(theValues)  // get the case that expresses these values
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetSaveValues(Values() As String)
		  Var s As String
		  Var i As Integer = Values.LastIndex + 1
		  If CheckBoxForHP.Value Then s = "h+"
		  Values.Add(s)
		  s = ""
		  If CheckBoxForHX.Value Then s = "hx"
		  Values.Add(s)
		  s = ""
		  If CheckBoxForV.Value Then s = "v"
		  Values.Add(s)
		  s = ""
		  If CheckBoxForAlpha.Value Then s = "α"
		  Values.Add(s)
		  s = ""
		  If CheckBoxForIota.Value Then s = "ι"
		  Values.Add(s)
		  s = ""
		  If CheckBoxForPsi.Value Then s = "Ψ"
		  Values.Add(s)
		  s = ""
		  If CheckBoxForChi1x.Value Then s = "χ1x"
		  Values.Add(s)
		  s = ""
		  If CheckBoxForChi1y.Value Then s = "χ1y"
		  Values.Add(s)
		  s = ""
		  If CheckBoxForChi1z.Value Then s = "χ1z"
		  Values.Add(s)
		  s = ""
		  If CheckBoxForChi2x.Value Then s = "χ2x"
		  Values.Add(s)
		  s = ""
		  If CheckBoxForChi2y.Value Then s = "χ2y"
		  Values.Add(s)
		  s = ""
		  If CheckBoxForChi2z.Value Then s = "χ2z"
		  Values.Add(s)
		  // If we are storing ANY variable, we must also store "t-y"
		  If Values.LastIndex > i Then // if our array is now longer than it was
		    Values.AddAt(0,"t-y")  // Add "t-y" as the first element
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PlotSelectedItem(TheItem As String)
		  If MyPlotData = Nil Then  // if this is the first call, then we must load the start/stop settings
		    // Set the start of the plot
		    PlotStartIndex = Round(StartSlider.Value/StartSlider.MaximumValue*PlotTimes.LastIndex)
		    If PlotStartIndex > PlotTimes.LastIndex -5 Then PlotStartIndex = PlotTimes.LastIndex - 5
		    
		    // Get the plot scale
		    Var selectedScale As Double = ScaleMenu.SelectedRowText.ToDouble
		    
		    // Calculate the new EndTimeIndex
		    PlotEndIndex = Round(selectedScale * PlotTimes.LastIndex) + PlotStartIndex
		    
		    // Ensure EndTimeIndex does not exceed the maximum index
		    If PlotEndIndex > PlotTimes.LastIndex Then
		      PlotEndIndex = PlotTimes.LastIndex
		    End If
		  End If
		  
		  MyPlotData = New PlotData
		  Var values() As Double = TheCases(0).DataRecorder.GetDataFor(TheItem)
		  MyPlotData.SetPlotArrays(PlotTimes, values)
		  MyPlotData.SetPlotIndexRange(PlotStartIndex, PlotEndIndex)
		  MyPlotCanvas.TheTitle = "Plot of " + TheItem + " as a Function of Time"
		  MyPlotCanvas.SetXAxisLabel("$t$ in years")
		  MyPlotCanvas.SetYAxisLabel(TheItem)
		  MyPlotCanvas.ClearPlotData
		  MyPlotCanvas.AddDataToPlot(MyPlotData)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdatePlot()
		  If MyPlotData = Nil Then Return // no data to plot
		  
		  // Make sure that the start index is small enough to display at least 5 steps
		  If PlotStartIndex > PlotTimes.LastIndex - 5 Then PlotStartIndex = PlotTimes.LastIndex - 5
		  
		  // Get the plot scale
		  Var selectedScale As Double = ScaleMenu.SelectedRowText.ToDouble
		  
		  // Calculate the new EndTimeIndex
		  PlotEndIndex = Round(selectedScale * PlotTimes.LastIndex) + PlotStartIndex
		  
		  // Ensure EndTimeIndex does not exceed the maximum index
		  If PlotEndIndex > PlotTimes.LastIndex Then
		    PlotEndIndex = PlotTimes.LastIndex
		  End If
		  
		  MyPlotData.SetPlotIndexRange(PlotStartIndex, PlotEndIndex)
		  MyPlotCanvas.AddDataToPlot(Nil)
		  MyPlotCanvas.Refresh
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateTc()
		  Var displayCase As CaseInfoClass = GetDisplayCase
		  Var tc As Double = displayCase.τc*displayCase.GM/displayCase.Year
		  Var tcString As String = Format(tc, "0.0000e#")
		  CaseListBox.CellTextAt(3,0) = tcString
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		AllCasesDone As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		LastStoreVariableIndex As Integer = 16
	#tag EndProperty

	#tag Property, Flags = &h0
		MyPlotData As PlotData
	#tag EndProperty

	#tag Property, Flags = &h0
		OutputFile As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		PlotEndIndex As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h0
		PlotStartIndex As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h0
		PlotTimes() As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		Setting As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		TheCases() As CaseInfoClass
	#tag EndProperty


#tag EndWindowCode

#tag Events MainTabPanel
	#tag Event
		Sub PanelChanged()
		  If Not Setting Then
		    If StartStopButton.Caption = "Stop" Then
		      Setting = True
		      System.Beep
		      me.SelectedPanelIndex = 0
		      Setting = False
		    ElseIf me.SelectedPanelIndex = 1 Then
		      // If we are running files, we have nothing to graph
		      If RunFileCheckBox.Value = True Then
		        System.Beep
		        // put us back to pane 0
		        Setting = True
		        me.SelectedPanelIndex = 0 
		        Setting = False
		      Else
		        GraphChoicePopupMenu.RemoveAllRows
		        If TheCases.LastIndex < 0 Then Return
		        Var vNamelist() As String = TheCases(0).DataRecorder.GetVariableNames
		        If vNamelist.LastIndex > -1 and vNamelist(0) = "t-y" Then
		          PlotTimes = TheCases(0).DataRecorder.GetDataFor("t-y")
		          If PlotTimes = Nil Then Return // we have nothing to graph, so bail out
		          PlotStartIndex = 0
		          PlotEndIndex = PlotTimes.LastIndex
		          Setting = True
		          For i As Integer = 1 to vNamelist.LastIndex
		            If Not vNamelist(i).IsEmpty Then GraphChoicePopupMenu.AddRow(vNamelist(i))
		          Next
		          GraphChoicePopupMenu.SelectedRowIndex = -1
		          Setting = False
		        End If
		      End If
		    End If
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ParamNameListBox
	#tag Event
		Function HeaderPressed(column as Integer) As Boolean
		  Return True  // do not allow sorting
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events GraphChoicePopupMenu
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  If not Setting Then
		    PlotSelectedItem(me.SelectedRowText)
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CaseListBox
	#tag Event
		Function CellKeyDown(row as Integer, column as Integer, key as String) As Boolean
		  If key = "x" And row > 4 And row < 16 Then
		    If me.CellTextAt(row,column).BeginsWith("x ") Then
		      me.ActiveTextControl.Text = me.ActiveTextControl.Text.Middle(2)
		      Return True
		    Else
		      me.ActiveTextControl.Text = "x " + me.ActiveTextControl.Text
		      Return True
		    End If
		  Else
		    Return False
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Function CellPressed(row As Integer, column As Integer, x As Integer, y As Integer) As Boolean
		  If row <> 3 And row <> 10 Then
		    me.EditCellAt(row, column)
		  End If
		  Return True
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub Opening()
		  me.ColumnTypeAt(0) = DesktopListBox.CellTypes.TextField
		End Sub
	#tag EndEvent
	#tag Event
		Function PaintCellBackground(g As Graphics, row As Integer, column As Integer) As Boolean
		  If row = 10 Then
		    g.DrawingColor = Color.RGB(230,230,230)
		    g.FillRectangle(0,0,g.Width,g.Height)
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  UpdateTc
		End Sub
	#tag EndEvent
	#tag Event
		Function HeaderPressed(column as Integer) As Boolean
		  Return True // do not allow sorting
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CaseProgressBar
	#tag Event
		Sub Open()
		  me.MaximumValue = 100
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events StartStopButton
	#tag Event
		Sub Pressed()
		  If me.Caption = "Run" Then
		    DoStart
		    me.Caption = "Stop"
		  Else
		    me.Caption = "Run"
		    DoStop
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events FileProgressBar
	#tag Event
		Sub Open()
		  me.MaximumValue = 100
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events StartSlider
	#tag Event
		Sub ValueChanged()
		  If Not Setting Then
		    PlotStartIndex = Round(me.Value/me.MaximumValue*PlotTimes.LastIndex)
		    ValueOfGraphStartLabel.Text = Format(me.Value/me.MaximumValue*PlotTimes(PlotTimes.LastIndex), "0.00000000")
		    UpdatePlot
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ScaleMenu
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  UpdatePlot
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BumpUpButton
	#tag Event
		Sub Pressed()
		  DoBump(False)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BumpDownButton
	#tag Event
		Sub Pressed()
		  DoBump(True)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SelectAllButton
	#tag Event
		Sub Pressed()
		  // Set all data checkboxes
		  CheckBoxForAlpha.Value = True
		  CheckBoxForChi1x.Value = True
		  CheckBoxForChi1y.Value = True
		  CheckBoxForChi1z.Value = True
		  CheckBoxForChi2x.Value = True
		  CheckBoxForChi2y.Value = True
		  CheckBoxForChi2z.Value = True
		  CheckBoxForHP.Value = True
		  CheckBoxForHX.Value = True
		  CheckBoxForIota.Value = True
		  CheckBoxForPsi.Value = True
		  CheckBoxForV.Value = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events InterfaceUpdateTimer
	#tag Event
		Sub Action()
		  Var TheSuper As CaseSupervisorClass = MainThread.CaseSupervisor  // Get a reference to the supervisor
		  // Whether the thread is running or not, update these values
		  ValueOfSimTimeLabel.Text = Format(TheSuper.τr*TheSuper.CaseInfo.GM/TheSuper.CaseInfo.Year, "0.0000000")
		  ValueOfVLabel.Text = Format(TheSuper.WaveBuilder.VDN,"0.000000")
		  ValueOfRunTimeLabel.Text = Format((System.Ticks - TheSuper.StartTicks)/60.0, "###0.00")
		  ValueOfStepNumberLabel.Text = TheSuper.N.ToString
		  If MainThread.State = Thread.Running then  // if the thread is running
		    CaseProgressBar.Value = Round(TheSuper.N*100/TheSuper.CaseInfo.NSteps)  // update the progress bar
		  Else // the thread has stopped, meaning that this case is done
		    CaseProgressBar.Value = 0  // set
		    StartStopButton.Caption = "Run"
		    me.RunMode = Timer.RunModes.Off // and we need no more updates
		    ValueOfStatusLabel.Text = "Stopped"
		    ValueOfStopReasonLabel.Text = TheSuper.TerminationMessage
		    
		    'if RunFileCheckBox.Value and AllCasesDone then
		    'Var t As TextOutputStream = TextOutputStream.Create(OutputFile)
		    't.WriteLine("M"+chr(9)+"δ"+chr(9)+"τc"+chr(9)+"R"+chr(9)+"β"+chr(9)+"ψ"+chr(9)+"λ0"+chr(9)+"Θ"_
		    '+chr(9)+"Φ"+chr(9)+"Ω"+chr(9)+"χ1"+chr(9)+"θ1"+chr(9)+"φ1"+chr(9)+"χ2"+chr(9)+"θ2"+chr(9)+"φ2")
		    'For Each caseItem As CaseInfoClass In TheCases
		    'Var theUncertainties() As String
		    'For Each unc As Double In caseItem.Uncertainties
		    'theUncertainties.Add(unc.ToString)
		    'Next
		    'Var theString As String = String.FromArray(theUncertainties, chr(9))
		    't.WriteLine(theString)
		    'Next
		    't.Close
		    'end if 
		    
		  End if		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="2"
		Type="Locations"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Windows Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&cFFFFFF"
		Type="ColorGroup"
		EditorType="ColorGroup"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		InitialValue=""
		Type="DesktopMenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllCasesDone"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Setting"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="PlotStartIndex"
		Visible=false
		Group="Behavior"
		InitialValue="-1"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="PlotEndIndex"
		Visible=false
		Group="Behavior"
		InitialValue="-1"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LastStoreVariableIndex"
		Visible=false
		Group="Behavior"
		InitialValue="16"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
