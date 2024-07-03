#tag Class
Protected Class VCalculatorClass
	#tag Method, Flags = &h0
		Sub Constructor(Theτc As Double, δ_ As Double, χ_1ℓ As Double, χ_2ℓ As Double)
		  δ = δ_
		  η = (1-δ*δ)*0.25
		  π = 3.14159265358979324
		  γE = 0.577215664901533
		  // loading coefficients
		  Var onepδ As Double = 1.0 + δ
		  Var onemδ As Double = 1.0 - δ
		  χ1ℓ = χ_1ℓ
		  χ2ℓ = χ_2ℓ
		  τc = Theτc
		  B6 = -1712/315
		  β3 = (113/48*onepδ*onepδ + 25/4*η)*χ1ℓ + (113/48*onemδ*onemδ + 25/4*η)*χ2ℓ
		  β5 = ((31319/4032-1159/96*η)*onepδ*onepδ + 809/84*η-281/8*η*η)*χ1ℓ _
		  +((31319/4032-1159/96*η)*onemδ*onemδ + 809/84*η-281/8*η*η)*χ2ℓ
		  β6 = π*(75/8*onepδ*onepδ + 151/6*η)*χ1ℓ*π + (75/8*onemδ*onemδ + 151/6*η)*χ2ℓ*π
		  β7 = ((130325/3024-796069/8064*η+100019/3456*η*η)*onepδ*onepδ _
		  + 1195759/18144*η-257023/1008*η*η + 2903/32*η*η*η)*χ1ℓ _
		  +((130325/3024-796069/8064*η+100019/3456*η*η)*onemδ*onemδ _
		  + 1195759/18144*η-257023/1008*η*η + 2903/32*η*η*η)*χ2ℓ
		  A0 = 96/5*η
		  A2 = -743/336 - 11/4*η
		  A3 = 4*π - β3
		  A4 = 34103/18144+13661/2016*η + 59/18*η*η
		  A5 = (-4159/672 + 189/8*η)*π - β5
		  A6 = 16447322263/139708800 + 16/3*π*π-856/105*Log(16)-1712/105*γE - β6 _
		  +(451/48*π*π - 56198689/217728)*η + 541/896*η*η - 5605/2592*η*η*η
		  A7 = -4415/4032*π + 358675/6048*π*η + 91495/1512*π*η*η - β7
		  C2 = -A2/6
		  C3 = -A3/5
		  C4 = -A4/4 + 5/24*A2*A2
		  C5 = -A5/3 + 3/5*A2*A3
		  C6 = -A6/2 - 3/4*B6 + 23/24*A4*A2 + 12/25*A3*A3 - 67/144*A2*A2*A2
		  C7 = -A7 + 2*A5*A2 + 2*A4*A3 - 3*A3*A2*A2
		  P0 = -3/(5*A0)
		  P2 = -5/3*A2
		  P3 = -5/2*A3
		  P4 = -5*A4+5*A2*A2
		  P5 = 5*A5-10*A3*A2
		  P6 = 5*A6-15*B6-10*A4*A2-5*A3*A3-5*A2*A2*A2
		  P7 = 5/2*A7 - 5*A5*A2 - 5*A4*A3 + 15/2*A3*A2*A2
		  
		  // loading derivatives  δ
		  dβ3dδ = χ1ℓ*(19*δ/12 + 113/24) + χ2ℓ*(19*δ/12 - 113/24)
		  dβ5dδ = χ1ℓ*(281*δ*η/8 + 1159*δ*onepδ * onepδ/192 - 809*δ/168 + (2*δ + 2)*(1159*δ*δ/384 + 38299/8064)) + χ2ℓ*(281*δ*η/8 + 1159*δ*onemδ*onemδ/192 - 809*δ/168 + (2*δ - 2)*(1159*δ*δ/384 + 38299/8064))
		  dβ6dδ = π*χ1ℓ*(37*δ/6 + 75/4) + π*χ2ℓ*(37*δ/6 - 75/4)
		  dβ7dδ = χ1ℓ*(-8709*δ*η*η/64 + 257023*δ*η/1008 - 1195759*δ/36288 + onepδ * onepδ*(-100019*δ*η/3456 + 796069*δ/16128) + (2*δ + 2)*(796069*δ*δ/32256 + 100019*η*η/3456 + 254599/13824)) + χ2ℓ*(-8709*δ*η*η/64 + 257023*δ*η/1008 - 1195759*δ/36288 + onemδ*onemδ*(-100019*δ*η/3456 + 796069*δ/16128) + (2*δ - 2)*(796069*δ*δ/32256 + 100019*η*η/3456 + 254599/13824))
		  dA0dδ = -48*δ/5
		  dA2dδ = 11*δ/8
		  dA3dδ = - dβ3dδ
		  dA4dδ = -59*δ*η/18 - 13661*δ/4032
		  dA5dδ = 189*δ*π/16 - dβ5dδ
		  dA6dδ = -451*δ*π^2*η/48 + 56669509*δ*η*η/145152 - 541*δ*η/896 - π*χ1ℓ*(37*δ/6 + 75/4) - π*χ2ℓ*(37*δ/6 - 75/4)
		  dA7dδ = 91495*δ*π*η/1512 + 358675*δ*π/12096 - dβ7dδ 
		  dB6dδ = 0
		  dC2dδ = - dA2dδ/6
		  dC3dδ = - dA3dδ/5
		  dC4dδ = -dA4dδ/4 + 5/12*A2*dA2dδ
		  dC5dδ =- dA5dδ/3 + 3/5*dA2dδ*A3 + 3/5*dA3dδ*A2
		  dC6dδ = -dA6dδ/2 - 3/4*dB6dδ + 23/24*dA4dδ*A2 + 23/24*dA2dδ*A4 + 24/25*A3*dA3dδ - 67/48*A2*A2*dA2dδ
		  dC7dδ =  -dA7dδ + 2*dA5dδ*A2 + 2*dA4dδ*A3 - 3*dA3dδ*A2*A2 + 2*dA2dδ*A5 + 2*dA3dδ*A4 - 6*dA2dδ*A3*A2
		  
		  // loading derivatives χ1ℓ
		  dβ3dχ1ℓ = 25*η/4 + 113*onepδ*onepδ/48
		  dβ5dχ1ℓ = -281*η^2/8 + 809*η/84 + (31319/4032 - 1159*η/96)*onepδ*onepδ
		  dβ6dχ1ℓ = π*(151*η/6 + 75*onepδ*onepδ/8)
		  dβ7dχ1ℓ = 2903*η^3/32 - 257023*η^2/1008 + 1195759*η/18144 + onepδ*onepδ*(100019*η^2/3456 - 796069*η/8064 + 130325/3024)
		  dA0dχ1ℓ = 0
		  dA2dχ1ℓ = 0
		  dA3dχ1ℓ = - dβ3dχ1ℓ
		  dA4dχ1ℓ = 0
		  dA5dχ1ℓ = - dβ5dχ1ℓ
		  dA6dχ1ℓ = - dβ6dχ1ℓ
		  dA7dχ1ℓ = -dβ7dχ1ℓ
		  dB6dχ1ℓ = 0
		  dC2dχ2ℓ = - dA2dχ2ℓ/6
		  dC3dχ2ℓ = - dA3dχ2ℓ/5
		  dC4dχ2ℓ = -dA4dχ2ℓ/4 + 5/12*A2*dA2dχ2ℓ
		  dC5dχ2ℓ =- dA5dχ2ℓ/3 + 3/5*dA2dχ2ℓ*A3 + 3/5*dA3dχ2ℓ*A2
		  dC6dχ2ℓ = -dA6dχ2ℓ/2 - 3/4*dB6dχ2ℓ + 23/24*dA4dχ2ℓ*A2 + 23/24*dA2dχ2ℓ*A4 + 24/25*A3*dA3dχ2ℓ - 67/48*A2*A2*dA2dχ2ℓ
		  dC7dχ2ℓ =  -dA7dχ2ℓ + 2*dA5dχ2ℓ*A2 + 2*dA4dχ2ℓ*A3 - 3*dA3dχ2ℓ*A2*A2 + 2*dA2dχ2ℓ*A5 + 2*dA3dχ2ℓ*A4 - 6*dA2dχ2ℓ*A3*A2
		  
		  // loading derivatives  χ2ℓ
		  dβ3dχ2ℓ = 25*η/4 + 113*onemδ*onemδ/48
		  dβ5dχ2ℓ = -281*η^2/8 + 809*η/84 + onemδ*onemδ*(31319/4032 - 1159*η/96)
		  dβ6dχ2ℓ = π*(151*η/6 + 75*onemδ*onemδ/8)
		  dβ7dχ2ℓ = 2903*η^3/32 - 257023*η^2/1008 + 1195759*η/18144 + onemδ*onemδ*(100019*η^2/3456 - 796069*η/8064 + 130325/3024)
		  dA0dχ2ℓ = 0
		  dA2dχ2ℓ = 0
		  dA3dχ2ℓ = - dβ3dχ2ℓ
		  dA4dχ2ℓ = 0
		  dA5dχ2ℓ = - dβ5dχ2ℓ
		  dA6dχ2ℓ = - dβ6dχ2ℓ
		  dA7dχ2ℓ = -dβ7dχ2ℓ
		  dB6dχ2ℓ = 0
		  dC2dχ2ℓ = - dA2dχ2ℓ/6
		  dC3dχ2ℓ = - dA3dχ2ℓ/5
		  dC4dχ2ℓ = -dA4dχ2ℓ/4 + 5/12*A2*dA2dχ2ℓ
		  dC5dχ2ℓ =- dA5dχ2ℓ/3 + 3/5*dA2dχ2ℓ*A3 + 3/5*dA3dχ2ℓ*A2
		  dC6dχ2ℓ = -dA6dχ2ℓ/2 - 3/4*dB6dχ2ℓ + 23/24*dA4dχ2ℓ*A2 + 23/24*dA2dχ2ℓ*A4 + 24/25*A3*dA3dχ2ℓ - 67/48*A2*A2*dA2dχ2ℓ
		  dC7dχ2ℓ =  -dA7dχ2ℓ + 2*dA5dχ2ℓ*A2 + 2*dA4dχ2ℓ*A3 - 3*dA3dχ2ℓ*A2*A2 + 2*dA2dχ2ℓ*A5 + 2*dA3dχ2ℓ*A4 - 6*dA2dχ2ℓ*A3*A2
		  
		  
		  // loading zeta
		  ζ0 = (5/(256*η*τc))^(0.125)
		  Var ζ2 As Double = ζ0*ζ0
		  Var ζ3 As Double = ζ2*ζ0
		  Var ζ4 As Double = ζ3*ζ0
		  Var ζ5 As Double = ζ4*ζ0
		  Var ζ6 As Double = ζ5*ζ0
		  Var ζ7 As Double = ζ6*ζ0
		  V0 = ζ0*(1.0 + C2*ζ2 + C3*ζ3 + C4*ζ4 + C5*ζ5 + (C6-3/2*B6*Log(ζ0))*ζ6 + C7*ζ7)
		  V = V0
		  V2 = V*V
		  V3 = V2*V
		  V4 = V3*V
		  V5 = V4*V
		  V6 = V5*V
		  V7 = V6*V
		  Ψc = -P0/V5*(1 + P2*V2 + P3*V3 + P4*V4 + P6*V6 + P7*V7)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dvdδAtTime()
		  dvdδ = ζ*( dC2dδ*ζ2+ dC3dδ*ζ3 + dC4dδ*ζ4 + dC5dδ*ζ5 + dC6dδ*ζ6 + dC7dδ*ζ7)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dvdτcAtTime()
		  dvdτc = dζdτc*(1 + C2*ζ2+ C3*ζ3 + C4*ζ4 + C5*ζ5 + (C6-1.5*B6*Log(ζ)*ζ6 + C7*ζ7) _
		  + ζ*( 2*C2*ζ*dζdτc+ 3*C3*ζ2*dζdτc + 4*C4*ζ3*dζdτc + 5*C5*ζ4*dζdτc -1.5*B6*dζdτc/ζ)*ζ6 _
		  - 9.0*B6*Log(ζ)*ζ5*dζdτc+ 7*C7*ζ6*dζdτc)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dvdχ1ℓAtTime()
		  dvdχ1ℓ = ζ*( dC2dχ1ℓ*ζ2+ dC3dχ1ℓ*ζ3 + dC4dχ1ℓ*ζ4 + dC5dχ1ℓ*ζ5 + dC6dχ1ℓ*ζ6 + dC7dχ1ℓ*ζ7)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dvdχ2ℓAtTime()
		  dvdχ2ℓ = ζ*( dC2dχ2ℓ*ζ2+ dC3dχ2ℓ*ζ3 + dC4dχ2ℓ*ζ4 + dC5dχ2ℓ*ζ5 + dC6dχ2ℓ*ζ6 + dC7dχ2ℓ*ζ7)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function VAtTime(τ As Double) As Double
		  ζ = (5/(256*η*(τc-τ)))^0.125
		  Var ζ2 As Double = ζ*ζ
		  Var ζ3 As Double = ζ2*ζ
		  Var ζ4 As Double = ζ3*ζ
		  Var ζ5 As Double = ζ4*ζ
		  Var ζ6 As Double = ζ5*ζ
		  Var ζ7 As Double = ζ6*ζ
		  V = ζ*(1 + C2*ζ2+ C3*ζ3 + C4*ζ4 + C5*ζ5 + (C6-1.5*B6*Log(ζ))*ζ6 + C7*ζ7)
		  V2 = V*V
		  V3 = V2*V
		  V4 = V3*V
		  V5 = V4*V
		  V6 = V5*V
		  V7 = V6*V
		  Dζdτc =-0.0764277840621157*(1/(η*(-τ + τc)))^0.125/(-τ + τc)
		  Return V
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function VDotForLastV() As Double
		  Return A0/3*V7*V2*(1.0 + A2*V2 + A3*V3+ A4*V4 + A5*V5 + (A6+B6*Log(V))*V6 + A7*V7)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ΨOrbForLastV() As Double
		  Var LogVIV0 As Double = Log(V/V0)
		  Return Ψc + P0/V5*(1.0 + P2*V2 + P3*V3 + P4*V4 + P5*V5*LogVIV0 + (P6+15*B6*LogVIV0)*V6+ P7*V7)
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private A0 As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private A2 As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private A3 As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private A4 As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private A5 As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private A6 As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private A7 As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private B6 As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private C2 As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private C3 As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private C4 As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private C5 As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private C6 As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private C7 As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dA0dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dA0dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dA0dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dA2dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dA2dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dA2dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dA3dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dA3dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dA3dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dA4dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dA4dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dA4dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dA5dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dA5dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dA5dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dA6dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dA6dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dA6dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dA7dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dA7dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dA7dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dB6dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dB6dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dB6dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dC2dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dC2dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dC2dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dC3dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dC3dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dC3dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dC4dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dC4dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dC4dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dC5dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dC5dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dC5dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dC6dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dC6dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dC6dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dC7dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dC7dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dC7dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dvdδ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dvdτc As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dvdχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dvdχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dβ3dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dβ3dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dβ3dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dβ5dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dβ5dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dβ5dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dβ6dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dβ6dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dβ6dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dβ7dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dβ7dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dβ7dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		dζdτc As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private P0 As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private P2 As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private P3 As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private P4 As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private P5 As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private P6 As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private P7 As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private V As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private V0 As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private V2 As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private V3 As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private V4 As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private V5 As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private V6 As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private V7 As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private β3 As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private β5 As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private β6 As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private β7 As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		γE As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		δ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ζ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ζ0 As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		ζ2 As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		ζ3 As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		ζ4 As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		ζ5 As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		ζ6 As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		ζ7 As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private η As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		π As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private τc As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		χ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		χ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Ψc As Double
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
			Name="dvdδ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dvdτc"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dvdχ1ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dvdχ2ℓ"
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
			Name="π"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="χ1ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="χ2ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dζdτc"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="γE"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dβ3dδ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dβ5dδ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dβ6dδ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dβ7dδ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dA0dδ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dA2dδ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dA3dδ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dA4dδ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dA5dδ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dA6dδ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dA7dδ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dB6dδ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dC2dδ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dC3dδ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dC4dδ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dC5dδ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dC6dδ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dC7dδ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dC3dχ1ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dA0dχ1ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dA2dχ1ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dA3dχ1ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dA4dχ1ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dA5dχ1ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dA6dχ1ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dA7dχ1ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dB6dχ1ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dC2dχ1ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dC4dχ1ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dC5dχ1ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dC6dχ1ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dC7dχ1ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dC3dχ2ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dA0dχ2ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dA2dχ2ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dA3dχ2ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dA4dχ2ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dA5dχ2ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dA6dχ2ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dA7dχ2ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dB6dχ2ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dC2dχ2ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dC4dχ2ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dC5dχ2ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dC6dχ2ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dC7dχ2ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dβ6dχ1ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dβ3dχ1ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dβ5dχ1ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dβ7dχ1ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dβ6dχ2ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dβ3dχ2ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dβ5dχ2ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dβ7dχ2ℓ"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ζ2"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ζ3"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ζ4"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ζ5"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ζ6"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ζ7"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
