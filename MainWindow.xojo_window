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
   Title           =   "LISA Simulator"
   Type            =   0
   Visible         =   True
   Width           =   1000
   Begin Timer InterfaceUpdateTimer
      Enabled         =   True
      Index           =   -2147483648
      LockedInPosition=   False
      Period          =   500
      RunMode         =   0
      Scope           =   0
      TabPanelIndex   =   0
   End
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
      TabDefinition   =   "Run\rAnalyze\rGraph"
      TabIndex        =   30
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   0
      Transparent     =   False
      Underline       =   False
      Value           =   0
      Visible         =   True
      Width           =   1000
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
         Height          =   572
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         InitialValue    =   "Parameter\nM (sols)\nδ\nT0 (s)\nR (ly)\nβ (°)	\nψ (°)\nλ0\nΘ (°)\nΦ(°)	\nΩ\nχ10x	\nχ10y	\nχ10z	\nχ20x\nχ20y\nx20z\nρ0\nPN Order\nDetectors\nΔT (s)\nDuration (y)"
         Italic          =   False
         Left            =   31
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
         Top             =   38
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
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "Graph of:"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   47
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   64
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
         Left            =   96
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   1
         TabPanelIndex   =   3
         TabStop         =   True
         Tooltip         =   ""
         Top             =   42
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   151
      End
      Begin DesktopLabel CaptionForStartTimeLabel
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
         Left            =   287
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   9
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "Starting Time (y):"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   47
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   104
      End
      Begin DesktopTextField StartTimeTextField
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   False
         AllowTabs       =   False
         BackgroundColor =   &cFFFFFF
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Format          =   ""
         HasBorder       =   True
         Height          =   26
         Hint            =   ""
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   397
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   10
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "0"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   46
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   110
      End
      Begin DesktopLabel CaptionForEndTimeLabel
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
         Left            =   287
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   11
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "Ending Time (y):"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   79
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   104
      End
      Begin DesktopTextField EndTimeTextField
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   False
         AllowTabs       =   False
         BackgroundColor =   &cFFFFFF
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Format          =   ""
         HasBorder       =   True
         Height          =   26
         Hint            =   ""
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   398
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   12
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "Max"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   79
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   110
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
         Height          =   572
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         InitialValue    =   "Case 1\n10000\n0.1\n500\n1.0e7\n39\n24\n0\n5\n268.5\n---\nx 0\nx 0\nx 0\nx 0\nx 0\nx 0\n0\n0\n2\n50\n1.0"
         Italic          =   False
         Left            =   115
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         RequiresSelection=   False
         RowSelectionType=   0
         Scope           =   0
         TabIndex        =   7
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   38
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   82
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin DesktopLabel ValueOfAnalyzeCaseLabel
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
         Left            =   129
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
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   48
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   124
      End
      Begin DesktopListBox MatrixListBox
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   True
         AllowResizableColumns=   False
         AllowRowDragging=   False
         AllowRowReordering=   False
         Bold            =   False
         ColumnCount     =   16
         ColumnWidths    =   "24, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80"
         DefaultRowHeight=   21
         DropIndicatorVisible=   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         GridLineStyle   =   3
         HasBorder       =   True
         HasHeader       =   True
         HasHorizontalScrollbar=   True
         HasVerticalScrollbar=   True
         HeadingIndex    =   -1
         Height          =   357
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         InitialValue    =   "\n1	+0.00e+00\n2\n3\n4\n5\n6\n7\n8\n9\n10\n11\n12\n13\n14\n15"
         Italic          =   False
         Left            =   20
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         RequiresSelection=   False
         RowSelectionType=   0
         Scope           =   0
         TabIndex        =   26
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   80
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   960
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin DesktopPopupMenu MatrixChoicePopupMenu
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   24
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         InitialValue    =   "ATA\nY Original\nY Inverted\nYNormalized Original\nYNormalized Inverted\nY^-1 x Y\nY0 Normalized Unchanged\n"
         Italic          =   False
         Left            =   144
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   29
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   37
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   207
      End
      Begin DesktopLabel CaptionForMatrixLabel
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
         TabIndex        =   30
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Matrix To Display:"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   38
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   136
      End
      Begin DesktopLabel XExplanationLabel
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   39
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   31
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   True
         Scope           =   0
         Selectable      =   False
         TabIndex        =   8
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Typing 'x' in a cell toggles whether that variable's uncertainty is calculated ('x' = 'not calculated')."
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   622
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   327
      End
      Begin DesktopButton CopyMatrixButton
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "Copy Matrix"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   372
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   33
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   38
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   97
      End
      Begin DesktopLabel CaptionForConditionLabel
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
         Left            =   703
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   34
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Condition Number:"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   38
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   123
      End
      Begin DesktopLabel ValueOfConditionLabel
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
         Left            =   829
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   35
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   38
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   151
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
         Left            =   401
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
         Top             =   38
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
         Left            =   401
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
         Top             =   134
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
         Left            =   569
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
         Top             =   134
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
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
         Left            =   401
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
         Top             =   164
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
         Left            =   569
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
         Top             =   164
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   114
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
         Left            =   401
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
         Top             =   194
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
         Left            =   569
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
         Top             =   194
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   114
      End
      Begin DesktopLabel CaptionForTcLabel
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
         Left            =   401
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   18
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Time to Coalescence (y):"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   232
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   156
      End
      Begin DesktopLabel ValueOfTcLabel
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
         Left            =   569
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   19
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   232
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   114
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
         Left            =   401
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
         Top             =   262
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
         Left            =   569
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
         Top             =   262
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
         Left            =   401
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
         Text            =   "Current Step Ratio:"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   292
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   156
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
         Left            =   569
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
         Top             =   292
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   114
      End
      Begin DesktopLabel CaptionForSNRLabel
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
         Left            =   401
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   24
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Current Signal-to-Noise:"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   322
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   156
      End
      Begin DesktopLabel ValueOfSNRLabel
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
         Left            =   569
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   25
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   322
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   114
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
         Left            =   465
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
         Top             =   38
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
         Left            =   202
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
         Top             =   482
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
         Left            =   401
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MaximumValue    =   100
         Scope           =   0
         TabIndex        =   28
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   94
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
         Left            =   706
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
         Top             =   38
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   96
      End
      Begin DesktopListBox UncertaintyListBox
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   False
         AllowResizableColumns=   False
         AllowRowDragging=   False
         AllowRowReordering=   False
         Bold            =   False
         ColumnCount     =   1
         ColumnWidths    =   "160"
         DefaultRowHeight=   26
         DropIndicatorVisible=   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         GridLineStyle   =   1
         HasBorder       =   True
         HasHeader       =   True
         HasHorizontalScrollbar=   False
         HasVerticalScrollbar=   False
         HeadingIndex    =   -1
         Height          =   441
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         InitialValue    =   "Uncertainty\n?\n?\n?\n?\n?\n?\n?\n?\n?\n?\n?\n?\n?\n?\n?\n?"
         Italic          =   False
         Left            =   202
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         RequiresSelection=   False
         RowSelectionType=   0
         Scope           =   0
         TabIndex        =   30
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   38
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   160
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
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
         Left            =   202
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
         Top             =   505
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
         Left            =   860
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   32
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   38
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
         Left            =   401
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
         Top             =   70
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   99
      End
      Begin DesktopLabel CaptionForFProgLabel
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
         Left            =   706
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   34
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "File Progress:"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   70
         Transparent     =   False
         Underline       =   False
         Visible         =   False
         Width           =   99
      End
      Begin ProgressBar FileProgressBar
         AllowAutoDeactivate=   True
         Enabled         =   True
         Height          =   14
         Indeterminate   =   False
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Left            =   706
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
         Top             =   94
         Transparent     =   True
         Value           =   0.0
         Visible         =   False
         Width           =   259
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
         Left            =   204
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
         Top             =   557
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   156
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
         Left            =   204
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
         Top             =   582
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
         Left            =   589
         LineStep        =   1
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumValue    =   100
         MinimumValue    =   0
         PageStep        =   20
         Scope           =   0
         TabIndex        =   13
         TabPanelIndex   =   3
         TabStop         =   True
         TickMarkStyle   =   0
         Tooltip         =   ""
         Top             =   47
         Transparent     =   False
         Value           =   0
         Visible         =   True
         Width           =   391
      End
      Begin DesktopSlider DurationSlider
         AllowAutoDeactivate=   True
         AllowLiveScrolling=   True
         Enabled         =   True
         Height          =   30
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Left            =   589
         LineStep        =   1
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumValue    =   100
         MinimumValue    =   0
         PageStep        =   20
         Scope           =   0
         TabIndex        =   14
         TabPanelIndex   =   3
         TabStop         =   True
         TickMarkStyle   =   0
         Tooltip         =   ""
         Top             =   79
         Transparent     =   False
         Value           =   100
         Visible         =   True
         Width           =   391
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
         Left            =   527
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   15
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "Start:"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   47
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   50
      End
      Begin DesktopLabel CaptionForLengthSliderLabel
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
         Left            =   527
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   16
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "Length:"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   79
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   50
      End
      Begin DesktopButton GraphButton
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "Graph"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "MainTabPanel"
         Italic          =   False
         Left            =   167
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   17
         TabPanelIndex   =   3
         TabStop         =   True
         Tooltip         =   ""
         Top             =   79
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
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
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Opening()
		  // Initialize the GraphChoicePopupMenu items
		  Var tempCase As New CaseInfoClass
		  Setting = True
		  GraphChoicePopupMenu.RemoveAllRows
		  Var theNames() As String = tempCase.GetPlotNames
		  For i As Integer = 0 To theNames.LastIndex
		    GraphChoicePopupMenu.AddRow(theNames(i))
		  Next
		  Setting = False
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AddCase(Values() As String, DoPlot As Boolean)
		  Var thisCase As New CaseInfoClass
		  Var Flag As Boolean
		  thisCase.SolveFor.ResizeTo(Integer(CaseInfoClass.Param.NItems) - 1)
		  thisCase.M = GetValueAndSolveFlag(Flag, Values(0))
		  thisCase.SolveFor(Integer(CaseInfoClass.Param.M)) = Flag
		  thisCase.δ = GetValueAndSolveFlag(Flag, Values(1))
		  thisCase.SolveFor(Integer(CaseInfoClass.Param.delta)) = Flag
		  thisCase.T0 = GetValueAndSolveFlag(Flag, Values(2))
		  thisCase.SolveFor(Integer(CaseInfoClass.Param.V0)) = Flag
		  thisCase.R = GetValueAndSolveFlag(Flag, Values(3))
		  thisCase.SolveFor(Integer(CaseInfoClass.Param.R)) = Flag
		  thisCase.β = GetValueAndSolveFlag(Flag, Values(4))
		  thisCase.SolveFor(Integer(CaseInfoClass.Param.beta)) = Flag
		  thisCase.ψ = GetValueAndSolveFlag(Flag, Values(5))
		  thisCase.SolveFor(Integer(CaseInfoClass.Param.psi)) = Flag
		  thisCase.λ0 = GetValueAndSolveFlag(Flag, Values(6))
		  thisCase.SolveFor(Integer(CaseInfoClass.Param.lambda0)) = Flag
		  thisCase.Θ = GetValueAndSolveFlag(Flag, Values(7))
		  thisCase.SolveFor(Integer(CaseInfoClass.Param.theta)) = Flag
		  thisCase.Φ = GetValueAndSolveFlag(Flag, Values(8))
		  thisCase.SolveFor(Integer(CaseInfoClass.Param.phi)) = Flag
		  thisCase.χ10x = GetValueAndSolveFlag(Flag, Values(9))
		  thisCase.SolveFor(Integer(CaseInfoClass.Param.chi10x)) = Flag
		  thisCase.χ10y = GetValueAndSolveFlag(Flag, Values(10))
		  thisCase.SolveFor(Integer(CaseInfoClass.Param.chi10y)) = Flag
		  thisCase.χ10z = GetValueAndSolveFlag(Flag, Values(11))
		  thisCase.SolveFor(Integer(CaseInfoClass.Param.chi10z)) = Flag
		  thisCase.χ20x = GetValueAndSolveFlag(Flag, Values(12))
		  thisCase.SolveFor(Integer(CaseInfoClass.Param.chi20x)) = Flag
		  thisCase.χ20y = GetValueAndSolveFlag(Flag, Values(13))
		  thisCase.SolveFor(Integer(CaseInfoClass.Param.chi20y)) = Flag
		  thisCase.χ20z = GetValueAndSolveFlag(Flag, Values(14))
		  thisCase.SolveFor(Integer(CaseInfoClass.Param.chi20z)) = Flag
		  thisCase.ρ0 = values(15).ToDouble
		  thisCase.PNOrder = values(16).ToInteger
		  thisCase.Detectors = values(17).ToInteger
		  thisCase.ΔT = values(17).ToDouble
		  thisCase.RunDuration = values(18).ToDouble
		  thisCase.StorePlotInfo = DoPlot
		  thisCase.FinishConstruction
		  TheCases.Add(thisCase)
		End Sub
	#tag EndMethod

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
		Sub DisplayMatrix(TheMatrix As Matrix)
		  Var n As Integer = TheMatrix.pDim-1
		  For j as Integer = 0 to 14
		    for k as Integer = 0 to 14
		      If j > n or k > n Then
		        MatrixListBox.CellTextAt(j,k+1) = ""
		      Else
		        MatrixListBox.CellTextAt(j,k+1) = Format(TheMatrix.pData(j,k), "+0.00e+00")
		      End If
		    Next
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisplayUncertainties(CaseInfo As CaseInfoClass)
		  UncertaintyListBox.CellTextAt(0) = GetUncertaintyString(CaseInfo.Uncertainties(Integer(CaseInfoClass.Param.M)))
		  UncertaintyListBox.CellTextAt(1) = GetUncertaintyString(CaseInfo.Uncertainties(Integer(CaseInfoClass.Param.delta)))
		  UncertaintyListBox.CellTextAt(2) = GetUncertaintyString(CaseInfo.Uncertainties(Integer(CaseInfoClass.Param.V0)))
		  UncertaintyListBox.CellTextAt(3) = GetUncertaintyString(CaseInfo.Uncertainties(Integer(CaseInfoClass.Param.R)))
		  UncertaintyListBox.CellTextAt(4) = GetUncertaintyString(CaseInfo.Uncertainties(Integer(CaseInfoClass.Param.beta)))
		  UncertaintyListBox.CellTextAt(5) = GetUncertaintyString(CaseInfo.Uncertainties(Integer(CaseInfoClass.Param.psi)))
		  UncertaintyListBox.CellTextAt(6) = GetUncertaintyString(CaseInfo.Uncertainties(Integer(CaseInfoClass.Param.lambda0)))
		  Var uTheta As Double = CaseInfo.Uncertainties(Integer(CaseInfoClass.Param.theta))
		  Var uPhi As Double = CaseInfo.Uncertainties(Integer(CaseInfoClass.Param.phi))
		  UncertaintyListBox.CellTextAt(7) = GetUncertaintyString(uTheta)
		  UncertaintyListBox.CellTextAt(8) = GetUncertaintyString(uPhi)
		  Var d2r As Double = CaseInfo.π/180.0
		  Var omega As Double = uTheta*uPhi/(4*CaseInfo.π*d2r*d2r)
		  UncertaintyListBox.CellTextAt(9) = GetUncertaintyString(omega)
		  UncertaintyListBox.CellTextAt(10) = GetUncertaintyString(CaseInfo.Uncertainties(Integer(CaseInfoClass.Param.chi10x)))
		  UncertaintyListBox.CellTextAt(11) = GetUncertaintyString(CaseInfo.Uncertainties(Integer(CaseInfoClass.Param.chi10y)))
		  UncertaintyListBox.CellTextAt(12) = GetUncertaintyString(CaseInfo.Uncertainties(Integer(CaseInfoClass.Param.chi10z)))
		  UncertaintyListBox.CellTextAt(13) = GetUncertaintyString(CaseInfo.Uncertainties(Integer(CaseInfoClass.Param.chi20x)))
		  UncertaintyListBox.CellTextAt(14) = GetUncertaintyString(CaseInfo.Uncertainties(Integer(CaseInfoClass.Param.chi20y)))
		  UncertaintyListBox.CellTextAt(15) = GetUncertaintyString(CaseInfo.Uncertainties(Integer(CaseInfoClass.Param.chi20z)))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DoStart()
		  // Start running a case or cases
		  if RunFileCheckBox.Value then // if we are running cases from a file
		    GetCasesFromFile // get the cases from the file
		    OutputFile = FolderItem.ShowSaveFileDialog(FileTypeGroup1.Text, "Untitled.txt") // define an output file
		    If OutputFile = Nil Then Return // bail out if the user has cancelled
		  Else
		    Var theValues() As String
		    Var theValue As String
		    For i As Integer = 0 to CaseListBox.LastRowIndex // for all entries in the list box
		      theValue = CaseListBox.CellTextAt(i) // get the text entered in the list box
		      if theValue <> "---" Then theValues.Add(theValue) // skip over the entry corresponding to Ω
		    Next
		    AddCase(theValues, True)
		  End if
		  AllCasesDone = False 
		  ValueOfStatusLabel.Text = "Running"
		  ValueOfStopReasonLabel.Text = ""
		  ValueOfTcLabel.Text = ""
		  MainThread.LoadCases(TheCases)
		  MainThread.Priority = Thread.HighPriority
		  MainThread.Start
		  InterfaceUpdateTimer.RunMode = Timer.RunModes.Multiple
		  
		  
		  
		  
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
		Sub GetCasesFromFile()
		  // To make a txt file that can be read by this code:
		  //    Rows should be parameters, in the order shown in the CaseListBox (ignoring Ω), separated by tabs.
		  //    All parameters need values, parameters not to be solved for should have x in front of them.
		  //    Do not write data in text file with commas.
		  
		  Var f As FolderItem
		  Var textInput As TextInputStream
		  Var rowFromFile As String
		  
		  f = FolderItem.ShowOpenFileDialog(FileTypeGroup1.Text)
		  
		  If f <> Nil Then
		    textInput = TextInputStream.Open(f)
		    textInput.Encoding = Encodings.UTF8
		    Do
		      rowFromFile = textInput.ReadLine
		      Var values() As String = rowFromFile.ToArray(String.Chr(9))
		      AddCase(values, False)
		    Loop Until textInput.EndOfFile
		    textInput.Close
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetTimeToCoalescence(TheSuper As CaseSupervisorClass) As Double
		  Var parameters As CaseInfoClass = TheSuper.CaseInfo
		  Var δ As Double = parameters.δ
		  Var η As Double = 0.25*(1.0 - δ*δ)
		  Var χa𝓁 As Double = TheSuper.WaveBuilder.SourceEvolverBase.χaL
		  Var χs𝓁 As Double = TheSuper.WaveBuilder.SourceEvolverBase.χsL
		  Var v0 As Double = parameters.V0
		  Var Threepi As Double = 3.0*parameters.π
		  Var c As Double = 743.0/2688.0 + (11.0/32.0)*η 
		  Var Term2 As Double = (32.0/3.0)*c
		  Var Term3 As Double = (64.0/3.0)*((47.0/40.0)*χs𝓁 + (15.0/32.0)*δ*χa𝓁 - Threepi/10.0)
		  Var Term4 As Double = 64.0*c*c/9.0 + (128.0/3.0)*(1855099.0/14450688.0 + (56975.0/258048.0)*η + (371.0/2048.0)*η*η)
		  Var A As Double = 5.0*Parameters.GM/(256.0*η*parameters.Year*v0^8)
		  Return A*(1 + Term2*v0*v0 + Term3*v0*v0*v0 + Term4*v0*v0*v0*v0)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetUncertaintyString(uc As Double) As String
		  If uc.IsNotANumber then
		    Return "(Imaginary)"
		  ElseIf uc.IsInfinite Then
		    Return "(Not Solved For)"
		  Else
		    Return "± " + uc.ToString
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetValueAndSolveFlag(ByRef Solve as Boolean, Source as String) As Double
		  If Source.BeginsWith("x ") Then
		    Solve = False
		    Return Source.Middle(2).ToDouble
		  Else
		    Solve = True
		    Return Source.ToDouble
		  End If
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		AllCasesDone As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		OutputFile As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Setting As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		TheCases() As CaseInfoClass
	#tag EndProperty


#tag EndWindowCode

#tag Events InterfaceUpdateTimer
	#tag Event
		Sub Action()
		  Var TheSuper As CaseSupervisorClass = MainThread.CaseSupervisor  // Get a reference to the supervisor
		  // Whether the thread is running or not, update these values
		  ValueOfSimTimeLabel.Text = Format(TheSuper.τr*TheSuper.CaseInfo.GM/TheSuper.CaseInfo.Year, "0.0000000")
		  ValueOfVLabel.Text = Format(TheSuper.WaveBuilder.VDN,"0.000000")
		  ValueOfRunTimeLabel.Text = Format((System.Ticks - TheSuper.StartTicks)/60.0, "###0.00")
		  ValueOfStepNumberLabel.Text = TheSuper.N.ToString
		  If ValueOfTcLabel.Text = "" Then ValueOfTcLabel.Text = GetTimeToCoalescence(TheSuper).ToString
		  Var theStepPower As Integer = TheSuper.WaveBuilder.StepPowerP
		  Var theFactor as Integer
		  If theStepPower < 0 Then
		    theFactor = 2^(-theStepPower)
		    ValueOfStepRatioLabel.Text = "1/" + theFactor.ToString
		  Else
		    theFactor = 2^theStepPower
		    ValueOfStepRatioLabel.Text = theFactor.ToString
		  End if
		  // Var SNR As Double = 0.5*TheSuper.HCalculator.H0V2/TheSuper.HCalculator.Sn2
		  // ValueOfSNRLabel.Text = Format(SNR, "0.000e+00")
		  If MainThread.State = Thread.Running then  // if the thread is running
		    CaseProgressBar.Value = Round(TheSuper.N*100/TheSuper.NSteps)  // update the progress bar
		  Else // the thread has stopped, meaning that this case is done
		    CaseProgressBar.Value = 0  // set
		    StartStopButton.Caption = "Run Cases"
		    me.RunMode = Timer.RunModes.Off // and we need no more updates
		    ValueOfStatusLabel.Text = "Stopped"
		    ValueOfStopReasonLabel.Text = TheSuper.TerminationMessage
		    If TheSuper.CaseInfo.Uncertainties <> Nil Then
		      DisplayUncertainties(TheSuper.CaseInfo)
		      MatrixChoicePopupMenu.SelectedRowIndex = 0
		      DisplayMatrix(TheSuper.ATAMatrix)
		      ValueOfConditionLabel.Text = Format(TheSuper.UncertaintyCalculator.Condition, "0.000e-0##")
		    End if
		    
		    if RunFileCheckBox.Value and AllCasesDone then
		      Var t As TextOutputStream = TextOutputStream.Create(OutputFile)
		      t.WriteLine("M"+chr(9)+"δ"+chr(9)+"T0"+chr(9)+"R"+chr(9)+"β"+chr(9)+"ψ"+chr(9)+"λ0"+chr(9)+"Θ"_
		      +chr(9)+"Φ"+chr(9)+"Ω"+chr(9)+"χ10x"+chr(9)+"χ10y"+chr(9)+"χ10z"+chr(9)+"χ20x"+chr(9)+"χ20y"+chr(9)+"χ20z")
		      For Each caseItem As CaseInfoClass In TheCases
		        Var theUncertainties() As String
		        For Each unc As Double In caseItem.Uncertainties
		          theUncertainties.Add(unc.ToString)
		        Next
		        Var theString As String = String.FromArray(theUncertainties, chr(9))
		        t.WriteLine(theString)
		      Next
		      t.Close
		    end if 
		    
		  End if		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events GraphChoicePopupMenu
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  If not Setting Then
		    
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CaseListBox
	#tag Event
		Function CellKeyDown(row as Integer, column as Integer, key as String) As Boolean
		  If key = "x" And row > 3 And row < 15 Then
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
		  me.EditCellAt(row, column)
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub Opening()
		  me.ColumnTypeAt(0) = DesktopListBox.CellTypes.TextField
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events MatrixChoicePopupMenu
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  Var theATA As Matrix = MainThread.CaseSupervisor.ATAMatrix
		  Var theY As Matrix = MainThread.CaseSupervisor.UncertaintyCalculator.Y
		  Var theY0 As Matrix = MainThread.CaseSupervisor.UncertaintyCalculator.Y0
		  Var theYNormalized As Matrix = MainThread.CaseSupervisor.UncertaintyCalculator.YNormalized
		  Var theY0Normalized As Matrix = MainThread.CaseSupervisor.UncertaintyCalculator.Y0Normalized
		  Var theProd As Matrix = MainThread.CaseSupervisor.UncertaintyCalculator.YInvXY
		  Var theY0NormalizedUnchanged As Matrix = MainThread.CaseSupervisor.UncertaintyCalculator.Y0NormUnchanged
		  
		  
		  If me.SelectedRowValue = "ATA" Then
		    DisplayMatrix(theATA)
		  ElseIf me.SelectedRowValue = "Y Original" Then
		    DisplayMatrix(theY0)
		  ElseIf me.SelectedRowValue = "YNormalized Inverted" Then
		    DisplayMatrix(theYNormalized)
		  ElseIf me.SelectedRowValue = "YNormalized Original" Then
		    DisplayMatrix(theY0Normalized)
		  ElseIf me.SelectedRowValue = "Y Inverted" Then
		    DisplayMatrix(theY)
		  ElseIf me.SelectedRowValue = "Y0 Normalized Unchanged" Then
		    DisplayMatrix(theY0NormalizedUnchanged)
		  Else
		    DisplayMatrix(theProd)
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CopyMatrixButton
	#tag Event
		Sub Pressed()
		  Var c As New Clipboard
		  Var s As String
		  Var delim As String
		  For j As Integer = 0 to MatrixListBox.LastRowIndex
		    For k As Integer = 1 to MatrixListBox.LastColumnIndex
		      s = s+ delim + MatrixListBox.CellTextAt(j,k)
		      delim = ", "
		    Next
		    delim = EndOfLine 
		  Next
		  c.Text = s
		End Sub
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
#tag Events RunFileCheckBox
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
		  //Add flag
		  'Graph
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DurationSlider
	#tag Event
		Sub ValueChanged()
		  //Add flag here 
		  'Graph
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events GraphButton
	#tag Event
		Sub Pressed()
		  'Graph
		  
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
#tag EndViewBehavior
