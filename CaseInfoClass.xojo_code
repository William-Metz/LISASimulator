#tag Class
Protected Class CaseInfoClass
	#tag Method, Flags = &h0
		Sub FinishConstruction()
		  // This method takes the information provided by the main window and fleshes out the parameter list.
		  // This assumes that M is in solar masses, T0 (the binary orbital period in the solar-system frame) is in s,
		  // R in lightyears, and angles in degrees.
		  // The spin variables are assumed to be already unitless (in units of the star's squared  mass).
		  // The run duration is assumed to be in years, but the step time is in seconds.
		  
		  Year = 3.15576e7  // length of the year in seconds
		  GM = 4.9267e-6*M   // the mass of the sun in seconds times the mass of the system in solar masses
		  GMΩe = GM*1.99213231e-7 //Unitless value of LISA's orbital frequency
		  R = R*Year // get R in seconds
		  NSteps = Round(RunDuration*Year/ΔT)
		  π = 3.14159265358979324  // record the value of pi so that we only have to define it once
		  
		  // convert all angles from radians to degrees
		  Var radiansFromDegrees As Double = π/180.0
		  β = radiansFromDegrees*β
		  ψ = radiansFromDegrees*ψ
		  λ0 = radiansFromDegrees*λ0
		  θ1 = radiansFromDegrees*θ1
		  φ1 = radiansFromDegrees*φ1
		  θ2 = radiansFromDegrees*θ2
		  φ2 = radiansFromDegrees*φ2
		  
		  // Calculate τc. it doesn't matter if this is completely accurate, as τc becomes the fundamental parameter,
		  // and its connection to T0 is only to allow the user to enter something more intuitive than the time to coalescence.
		  // See the BinaryWaveMath file for the formula being used here.
		  Var v0 As Double = Pow(GM*2.0*π*(1.0 + Z)/T0,1/3)
		  Var η As Double = 0.25*(1.0 - δ*δ)
		  Var Σℓ As Double = 0.5*((1.0-δ)*χ2*Cos(θ2) - (1.0+δ)*χ1*Cos(θ1))
		  Var Sℓ As Double = 0.25*((1.0+δ)*(1.0+δ)*χ1*Cos(θ1) + (1.0+δ)*(1.0+δ)*χ2*Cos(θ2))
		  Var T2 As Double = 32/3*(743/2688+11/32*η)
		  Var T3 As Double = 64/3*(47/40*Sℓ + δ*15/32*Σℓ-3/10*π)
		  Var T4 As Double = 64*(743/2688 + 11/32*η)^2 - 128/9*(1855099/14450688 + 56975/258048*η - 371/2048*η*η)
		  τc = 5/(256*η*v0^8)*(1.0 + T2*v0^2 + T3*v0^3 + T4*v0^4)
		  // Not sure what these are doing.
		  Var vC As New VCalculatorClass(τc, δ, 0, 0)
		  Var v1 As Double = vC.VAtTime(0.0)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetSaveNames(Values() as String, StartIndex as Integer)
		  // This method takes a list of string variable names from a case values list
		  // sets up a list consisting of variable names to be saved, and then initializes
		  // the DataRecorder class to store such a variable list.
		  Var VNames() As String  // create an array
		  For i As Integer = StartIndex To Values.LastIndex
		    VNames.Add(Values(i))  // load it with the values supplied
		  Next
		  // initialize the DataRecorder instance with that list of variable names
		  DataRecorder = New DataRecorderClass(VNames)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		DataRecorder As DataRecorderClass
	#tag EndProperty

	#tag Property, Flags = &h0
		FromFile As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		GM As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		GMΩe As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		M As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		NSteps As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		PNForV As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		PNOrder As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		R As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		RunDuration As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		SaveToFile As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		T0 As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		Year As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		Z As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		β As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		δ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		ΔT As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		θ1 As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		θ2 As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		λ0 As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		π As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		τc As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		φ1 As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		φ2 As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		χ1 As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		χ2 As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		ψ As Double
	#tag EndProperty


	#tag Enum, Name = Param, Type = Integer, Flags = &h0
		M
		  δ
		  τc
		  λ0
		  χ1
		  θ1
		  φ1
		  χ2
		  θ2
		  φ2
		  R
		  β
		  ψ
		Nitems
	#tag EndEnum


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
			Name="GMΩe"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Z"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="β"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="δ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ΔT"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="λ0"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="χ1"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="θ1"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="φ1"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="χ2"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="θ2"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="φ2"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ψ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="T0"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="M"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RunDuration"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="π"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="GM"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="PNOrder"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="R"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Year"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="τc"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FromFile"
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NSteps"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
