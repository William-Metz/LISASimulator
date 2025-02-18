#tag Class
Protected Class DeltaFuncsClass
	#tag Method, Flags = &h0
		Sub SetDerivs(theδ As Double)
		  δ = 1.0
		  η = -0.5*δ
		  δ0 = 0
		  δ1 = 0.25 - 0.75*theδ*theδ
		  δ2 = -0.25 - 0.75*theδ*theδ
		  η10 = -0.5*δ
		  η2 = 0.5*δ
		  η3 = -0.5*δ
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetValues(theδ As Double)
		  δ = theδ
		  η = 0.25*(1.0-δ*δ)
		  δ0 = 1.0
		  δ1 = δ*η
		  δ2 = δ*(η-0.5)
		  η10 = η+1.0
		  η2 = 2.0-η
		  η3 = η-1.0/3.0
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		δ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		δ0 As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		δ1 As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		δ2 As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		η As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		η10 As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		η2 As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		η3 As Double
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
			Name="δ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="δ1"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="δ0"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="δ2"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="η"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="η2"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="η3"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="η10"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
