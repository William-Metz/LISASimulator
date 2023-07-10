#tag Class
Protected Class HX1CalculatorClass
Inherits HNCalculator1
	#tag Method, Flags = &h0
		Sub Constructor(MyParameters As CaseParametersClass)
		  Super.Constructor(MyParameters) // Call the superclass
		  
		  // This part of the constructor should set up any constants that the class might need
		  // to calculate the wave and its derivatives. Be sure to define the constants as
		  // properties of this particular subclass.
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetA1(AP As AmplitudeParameters) As Double
		  return Parameters.δ*(-45/8)*AP.C1^2*AP.S2β*AP.S1^4
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetA10(AP As AmplitudeParameters) As Double
		  return Parameters.δ*(-1/8)*(AP.C1^4*AP.S2β*AP.S1^2)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetA11(AP As AmplitudeParameters) As Double
		  return Parameters.δ*(45/8)*(AP.C1^4)*(AP.S2β)*(AP.S1^2)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetA12(AP As AmplitudeParameters) As Double
		  return Parameters.δ*(9/2)*AP.C2β*AP.C1^5*AP.S1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetA13(AP As AmplitudeParameters) As Double
		  return Parameters.δ*(-9/8)*AP.C1^6*AP.S2β
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetA2(AP As AmplitudeParameters) As Double
		  return Parameters.δ*(9/2)*AP.C2β*AP.C1*AP.S1^5
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetA3(AP As AmplitudeParameters) As Double
		  return Parameters.δ*(9/8)*AP.S2β*AP.S1^6
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetA4(AP As AmplitudeParameters) As Double
		  return Parameters.δ*(-1/64*AP.Cβ*AP.Sβ+43/128*AP.Cβ*AP.C2*AP.Sβ-23/128*AP.C4*AP.S2β+5/256*Ap.C6*AP.S2β)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetA5(AP As AmplitudeParameters) As Double
		  return Parameters.δ*((-1-AP.C2β/4)*AP.C1+1/4*AP.C2β*AP.C1*AP.C2)*AP.S1^3 
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetA6(AP As AmplitudeParameters) As Double
		  return Parameters.δ*(1/8)*AP.C1^2*AP.S2β*AP.S1^4
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetA7(AP As AmplitudeParameters) As Double
		  return Parameters.δ*(1/2)*AP.Sβ^2*AP.S4
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetA8(AP As AmplitudeParameters) As Double
		  return Parameters.δ*(AP.Cβ*AP.Sβ/64+43/128*AP.Cβ*AP.C2*AP.Sβ+23/128*AP.C4*AP.S2β+5/256*AP.C6*AP.S2β)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetA9(AP As AmplitudeParameters) As Double
		  return Parameters.δ*AP.S1*((-1-AP.C2β/4)*AP.C1^3-1/4*AP.C2β*AP.C1^3*AP.C2)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetAllTerms(TheValues As CurrentValuesClass, TheDerivatives As CurrentDerivativesClass) As HTermData()
		  // Provide references to the current values and current derivatives. "CurrentValues" and
		  // "CurrentDerivatives" are properties of the superclass. These classes contain (as properties)
		  // all the information needed to calculate the wave and its derivatives.
		  CurrentValues = TheValues
		  CurrentDerivatives = TheDerivatives
		  
		  // Clear the TermData array for this PN polarization term
		  TermData.RemoveAll
		  Var AP As AmplitudeParameters = new AmplitudeParameters(Parameters)
		  // The calculation of all subterms in this polarization term should appear here. Write a method
		  // to calculate each subterm, then append the result to the TermData array. Something like
		  // TermData.Add(GetTermK), where GetTermK (K = 0, 1, 2, ...) that returns an HTermData instance.
		  // The GetTermK method in turn should call a separate method GetAK(AP As AmplitudeParameters)
		  // that calculates the amplitude alone (since we will need to call this multiple times to handle side cases)
		  // with tweaked values of the the parameters. The rest of the code in GetTermK should create a new
		  // instance of HTermData and set its properties appropriately (ignore the derivatives for the moment).
		  TermData.Add(GetTerm1(AP))
		  TermData.Add(GetTerm2(AP))
		  TermData.Add(GetTerm3(AP))
		  TermData.Add(GetTerm4(AP))
		  TermData.Add(GetTerm5(AP))
		  TermData.Add(GetTerm6(AP))
		  TermData.Add(GetTerm7(AP))
		  TermData.Add(GetTerm8(AP))
		  TermData.Add(GetTerm9(AP))
		  TermData.Add(GetTerm10(AP))
		  TermData.Add(GetTerm11(AP))
		  TermData.Add(GetTerm12(AP))
		  TermData.Add(GetTerm13(AP))
		  
		  // At the end, return the array you have created.
		  Return TermData
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetTerm1(AP As AmplitudeParameters) As HTermData
		  return new HTermData(GetA1(AP), 1, -3)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetTerm10(AP As AmplitudeParameters) As HTermData
		  return new HTermData(GetA10(AP), 3, 1)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetTerm11(AP As AmplitudeParameters) As HTermData
		  return new HTermData(GetA11(AP), 1, 3)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetTerm12(AP As AmplitudeParameters) As HTermData
		  return new HTermData(GetA12(AP), 2, 3)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetTerm13(AP As AmplitudeParameters) As HTermData
		  return new HTermData(GetA13(AP), 3, 3)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetTerm2(AP As AmplitudeParameters) As HTermData
		  return new HTermData(GetA2(AP), 2,-3)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetTerm3(AP As AmplitudeParameters) As HTermData
		  return new HTermData(GetA3(AP), 3, -3)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetTerm4(AP As AmplitudeParameters) As HTermData
		  return new HTermData(GetA4(AP), 1, -1)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetTerm5(AP As AmplitudeParameters) As HTermData
		  return new HTermData(GetA5(AP), 2, -1)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetTerm6(AP As AmplitudeParameters) As HTermData
		  return new HTermData(GetA6(AP), 3, -1)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetTerm7(AP As AmplitudeParameters) As HTermData
		  return new HTermData(GetA7(AP), 0, 1)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetTerm8(AP As AmplitudeParameters) As HTermData
		  return new HTermData(GetA8(AP), 1, 1)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetTerm9(AP As AmplitudeParameters) As HTermData
		  return new HTermData(GetA9(AP), 2, 1)
		End Function
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="π"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
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
	#tag EndViewBehavior
End Class
#tag EndClass
