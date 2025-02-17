#tag Class
Protected Class CaseSupervisorClass
	#tag Method, Flags = &h0
		Sub Constructor(currentCaseInfo As CaseInfoClass)
		  ' The CaseSupervisor class handles running multiple cases
		  StartTicks = System.Ticks
		  
		  ' Define the specific time shift Δt (adjust as needed)
		  Dim timeShift As Double = 0.01  ' Set this value
		  
		  ' Initialize the arrays with 3 elements (index 0, 1, 2)
		  CaseList = New CaseInfoClass(2) {}  
		  WaveBuilders = New WaveBuilderClass(2) {}
		  ATAMatrices = New Matrix(2) {}
		  UncertaintyCalculators = New UncertaintyCalculatorClass(2) {}
		  
		  ' Initialize each element of the arrays with new instances
		  Dim CentralCase As New CaseInfoClass()  
		  
		  ' Create and initialize cases with time shifts
		  CaseList(0) = CentralCase  ' Central case
		  CaseList(1) = CentralCase.AdjustTime(-timeShift) ' Case before central case
		  CaseList(2) = CentralCase.AdjustTime(timeShift) ' Case after central case
		  
		  ' Loop to initialize WaveBuilders, ATAMatrices, and UncertaintyCalculators
		  For i As Integer = 0 To 2
		    WaveBuilders(i) = New WaveBuilderClass(CaseList(i)) ' Initialize WaveBuilder for each case
		    CaseList(i).DataRecorder.SetDataSource(WaveBuilders(i)) ' Connect data source for recording
		    
		    ATAMatrices(i) = New Matrix(15) ' Initialize an empty 15x15 matrix
		    ATAMatrices(i).InverseTest ' Test matrix inversion (optional, but checks matrix validity)
		    
		    UncertaintyCalculators(i) = New UncertaintyCalculatorClass(CaseList(i)) ' Initialize uncertainty calculator for each case
		  Next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DoSteps()
		  Try
		    ' Define the time shift Δt
		    Dim timeShift As Double = 0.01  ' Set this value
		    Dim Δt As Double = timeShift     ' Use the timeShift defined in the constructor
		    
		    ' Iterate over all three cases
		    For i As Integer = 0 To 2
		      ' Access the CaseInfo, WaveBuilder, ATAMatrix, and UncertaintyCalculator for the current case
		      Dim CaseInfo As CaseInfoClass = CaseList(i)  
		      Dim WaveBuilder As WaveBuilderClass = WaveBuilders(i)
		      Dim ATAMatrix As Matrix = ATAMatrices(i)
		      Dim UncertaintyCalculator As UncertaintyCalculatorClass = UncertaintyCalculators(i)
		      
		      ' Compute per-case time step
		      Dim Δτr As Double = CaseInfo.ΔT / CaseInfo.GM
		      
		      ' Loop over the number of steps for this case
		      For N As Integer = 0 To CaseInfo.NSteps
		        ' Compute τr based on the case type
		        Dim τr As Double
		        Select Case i
		        Case 0  ' Central case
		          τr = N * Δτr
		        Case 1  ' Case before the central case
		          τr = (N * Δτr) - Δt  ' Apply the time shift for case before
		        Case 2  ' Case after the central case
		          τr = (N * Δτr) + Δt  ' Apply the time shift for case after
		        End Select
		        
		        ' Execute step
		        If WaveBuilder.DidDetectorStepOK(N) Then
		          ' LoadATA(WaveBuilder.DHDq)  ' Load ATA matrix for this case (optional)
		        Else
		          Exit For  ' Stop processing this case if step is not OK
		        End If
		      Next
		      
		      ' Solve for uncertainties (if needed)
		      ' UncertaintyCalculator.Calculate(ATAMatrix)  ' Uncomment this if solving uncertainties is required
		      
		    Next
		  Catch err As RuntimeException
		    ' Handle any errors that occur during execution
		    TerminationMessage = err.Message + " at step " + N.ToString
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadATA(DHDQ() As Double)
		  // Add everything into the ATA matrix
		  For j As Integer = 0 To 14
		    For k As Integer = 0 to 14
		      ATAMatrix.PData(j,k) = ATAMatrix.PData(j,k) + DHDq(j)*DHDq(k)
		    Next
		  Next		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		ATAMatrices(2) As ATAMatrix
	#tag EndProperty

	#tag Property, Flags = &h0
		ATAMatrix As Matrix
	#tag EndProperty

	#tag Property, Flags = &h0
		CaseInfo As CaseInfoClass
	#tag EndProperty

	#tag Property, Flags = &h0
		CaseList(2) As CaseInfoClass
	#tag EndProperty

	#tag Property, Flags = &h0
		CurrentStep As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		DataRecorder As DataRecorderClass
	#tag EndProperty

	#tag Property, Flags = &h0
		N As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		StartTicks As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		TerminationMessage As String
	#tag EndProperty

	#tag Property, Flags = &h0
		UncertaintyCalculator As UncertaintyCalculatorClass
	#tag EndProperty

	#tag Property, Flags = &h0
		UncertaintyCalculators(2) As UncertaintyCalculatorClass
	#tag EndProperty

	#tag Property, Flags = &h0
		WaveBuilder As WaveBuilderClass
	#tag EndProperty

	#tag Property, Flags = &h0
		WaveBuilders(2) As WaveBuilderClass
	#tag EndProperty

	#tag Property, Flags = &h0
		Δτr As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		τr As Double
	#tag EndProperty


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
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="τr"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="N"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TerminationMessage"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StartTicks"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Δτr"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CurrentStep"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
