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
		  Dβ3dδ = χ1ℓ*(19*δ/12 + 113/24) + χ2ℓ*(19*δ/12 - 113/24)
		  Dβ5dδ = χ1ℓ*(281*δ*η/8 + 1159*δ*onepδ * onepδ/192 - 809*δ/168 + (2*δ + 2)*(1159*δ*δ/384 + 38299/8064)) + χ2ℓ*(281*δ*η/8 + 1159*δ*onemδ*onemδ/192 - 809*δ/168 + (2*δ - 2)*(1159*δ*δ/384 + 38299/8064))
		  Dβ6dδ = π*χ1ℓ*(37*δ/6 + 75/4) + π*χ2ℓ*(37*δ/6 - 75/4)
		  Dβ7dδ = χ1ℓ*(-8709*δ*η*η/64 + 257023*δ*η/1008 - 1195759*δ/36288 + onepδ * onepδ*(-100019*δ*η/3456 + 796069*δ/16128) + (2*δ + 2)*(796069*δ*δ/32256 + 100019*η*η/3456 + 254599/13824)) + χ2ℓ*(-8709*δ*η*η/64 + 257023*δ*η/1008 - 1195759*δ/36288 + onemδ*onemδ*(-100019*δ*η/3456 + 796069*δ/16128) + (2*δ - 2)*(796069*δ*δ/32256 + 100019*η*η/3456 + 254599/13824))
		  DA0dδ = -48*δ/5
		  DA2dδ = 11*δ/8
		  DA3dδ = - β3dδ
		  DA4dδ = -59*δ*η/18 - 13661*δ/4032
		  DA5dδ = 189*δ*π/16 - Dβ5dδ
		  DA6dδ = -451*δ*π^2*η/48 + 56669509*δ*η*η/145152 - 541*δ*η/896 - π*χ1ℓ*(37*δ/6 + 75/4) - π*χ2ℓ*(37*δ/6 - 75/4)
		  DA7dδ = 91495*δ*π*η/1512 + 358675*δ*π/12096 - Dβ7dδ 
		  DB6dδ = 0
		  DC2dδ = - DA2dδ/6
		  DC3dδ = - DA3dδ/5
		  DC4dδ = -DA4dδ/4 + 5/12*A2*DA2dδ
		  DC5dδ =- DA5dδ/3 + 3/5*DA2dδ*A3 + 3/5*DA3dδ*A2
		  DC6dδ = -DA6dδ/2 - 3/4*DB6dδ + 23/24*DA4dδ*A2 + 23/24*DA2dδ*A4 + 24/25*A3*DA3dδ - 67/48*A2*A2*DA2dδ
		  DC7dδ =  -DA7dδ + 2*DA5dδ*A2 + 2*DA4dδ*A3 - 3*DA3dδ*A2*A2 + 2*DA2dδ*A5 + 2*DA3dδ*A4 - 6*DA2dδ*A3*A2
		  DP0dδ =  DA0dδ*3/(5*A0*A0)
		  DP2dδ = -5/3* DA2dδ
		  DP3dδ = -5/2* DA3dδ
		  DP4dδ = -5* DA4dδ+10*A2* DA2dδ
		  DP5dδ = 5* DA5dδ-10*A3* DA2dδ -10* DA3dδ*A2
		  DP6dδ = 5* DA6dδ-15* DB6dδ-10*A4* DA2dδ - 10* DA4dδ*A2 -10*A3* DA3dδ-15*A2*A2* DA2dδ
		  DP7dδ = 5/2* DA7dδ - 5*A5* DA2dδ -5* DA5dδ*A2- 5*A4* DA3dδ -5* DA4dδ*A3+ 15/2* DA3dδ*A2*A2  + 15*A3*A2* DA2dδ
		  // loading derivatives χ1ℓ
		  Dβ3dχ1ℓ = 25*η/4 + 113*onepδ*onepδ/48
		  Dβ5dχ1ℓ = -281*η^2/8 + 809*η/84 + (31319/4032 - 1159*η/96)*onepδ*onepδ
		  Dβ6dχ1ℓ = π*(151*η/6 + 75*onepδ*onepδ/8)
		  Dβ7dχ1ℓ = 2903*η^3/32 - 257023*η^2/1008 + 1195759*η/18144 + onepδ*onepδ*(100019*η^2/3456 - 796069*η/8064 + 130325/3024)
		  DA0dχ1ℓ = 0
		  DA2dχ1ℓ = 0
		  DA3dχ1ℓ = - Dβ3dχ1ℓ
		  DA4dχ1ℓ = 0
		  DA5dχ1ℓ = - Dβ5dχ1ℓ
		  DA6dχ1ℓ = - Dβ6dχ1ℓ
		  DA7dχ1ℓ = -Dβ7dχ1ℓ
		  DB6dχ1ℓ = 0
		  DC2dχ1ℓ = - DA2dχ1ℓ/6
		  DC3dχ1ℓ = - DA3dχ1ℓ/5
		  DC4dχ1ℓ = -DA4dχ1ℓ/4 + 5/12*A2*DA2dχ1ℓ
		  DC5dχ1ℓ =- DA5dχ1ℓ/3 + 3/5*DA2dχ1ℓ*A3 + 3/5*DA3dχ1ℓ*A2
		  DC6dχ1ℓ = -DA6dχ1ℓ/2 - 3/4*DB6dχ1ℓ + 23/24*DA4dχ1ℓ*A2 + 23/24*DA2dχ1ℓ*A4 + 24/25*A3*DA3dχ1ℓ - 67/48*A2*A2*DA2dχ1ℓ
		  DC7dχ1ℓ =  -DA7dχ1ℓ + 2*dD5dχ1ℓ*A2 + 2*DA4dχ1ℓ*A3 - 3*DA3dχ1ℓ*A2*A2 + 2*DA2dχ1ℓ*A5 + 2*DA3dχ1ℓ*A4 - 6*DA2dχ1ℓ*A3*A2
		  DP0dχ1ℓ =  DA0dχ1ℓ*3/(5*A0*A0)
		  DP2dχ1ℓ = -5/3* DA2dχ1ℓ
		  DP3dχ1ℓ = -5/2* DA3dχ1ℓ
		  DP4dχ1ℓ = -5* DA4dχ1ℓ+10*A2* DA2dχ1ℓ
		  DP5dχ1ℓ = 5* DA5dχ1ℓ-10*A3* DA2dχ1ℓ -10* DA3dχ1ℓ*A2
		  DP6dχ1ℓ = 5* DA6dχ1ℓ-15* DB6dχ1ℓ-10*A4* DA2dχ1ℓ - 10* DA4dχ1ℓ*A2 -10*A3* DA3dχ1ℓ-15*A2*A2* DA2dχ1ℓ
		  DP7dχ1ℓ = 5/2* DA7dχ1ℓ - 5*A5* DA2dχ1ℓ -5* DA5dχ1ℓ*A2- 5*A4* DA3dχ1ℓ -5* DA4dχ1ℓ*A3+ 15/2* DA3dχ1ℓ*A2*A2  + 15*A3*A2* DA2dχ1ℓ
		  // loading derivatives  χ2ℓ
		  Dβ3dχ2ℓ = 25*η/4 + 113*onemδ*onemδ/48
		  Dβ5dχ2ℓ = -281*η^2/8 + 809*η/84 + onemδ*onemδ*(31319/4032 - 1159*η/96)
		  Dβ6dχ2ℓ = π*(151*η/6 + 75*onemδ*onemδ/8)
		  Dβ7dχ2ℓ = 2903*η^3/32 - 257023*η^2/1008 + 1195759*η/18144 + onemδ*onemδ*(100019*η^2/3456 - 796069*η/8064 + 130325/3024)
		  DA0dχ2ℓ = 0
		  DA2dχ2ℓ = 0
		  DA3dχ2ℓ = - Dβ3dχ2ℓ
		  DA4dχ2ℓ = 0
		  DA5dχ2ℓ = - Dβ5dχ2ℓ
		  DA6dχ2ℓ = - Dβ6dχ2ℓ
		  DA7dχ2ℓ = -Dβ7dχ2ℓ
		  DB6dχ2ℓ = 0
		  DC2dχ2ℓ = - DA2dχ2ℓ/6
		  DC3dχ2ℓ = - DA3dχ2ℓ/5
		  DC4dχ2ℓ = -DA4dχ2ℓ/4 + 5/12*A2*dA2dχ2ℓ
		  DC5dχ2ℓ =- DA5dχ2ℓ/3 + 3/5*DA2dχ2ℓ*A3 + 3/5*DA3dχ2ℓ*A2
		  DC6dχ2ℓ = -DA6dχ2ℓ/2 - 3/4*DB6dχ2ℓ + 23/24*DA4dχ2ℓ*A2 + 23/24*DA2dχ2ℓ*A4 + 24/25*A3*DA3dχ2ℓ - 67/48*A2*A2*DA2dχ2ℓ
		  DC7dχ2ℓ =  -DA7dχ2ℓ + 2*DA5dχ2ℓ*A2 + 2*DA4dχ2ℓ*A3 - 3*DA3dχ2ℓ*A2*A2 + 2*DA2dχ2ℓ*A5 + 2*DA3dχ2ℓ*A4 - 6*DA2dχ2ℓ*A3*A2
		  P0 = -3/(5*A0)
		  P2 = -5/3*A2
		  P3 = -5/2*A3
		  P4 = -5*A4+5*A2*A2
		  P5 = 5*A5-10*A3*A2
		  P6 = 5*A6-15*B6-10*A4*A2-5*A3*A3-5*A2*A2*A2
		  P7 = 5/2*A7 - 5*A5*A2 - 5*A4*A3 + 15/2*A3*A2*A2
		  
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
		Function DvdδForLastV() As Double
		   Dvdδ = DC2dδ*ζ3+ dC3dδ*ζ4 + DC4dδ*ζ5 + DC5dδ*ζ6 + DC6dδ*ζ7 + DC7dδ*ζ7*ζ  _
		  + Dζdδ +3*C2*ζ2*Dζdδ+ 4*C3*ζ3*Dζdδ + 5*C4*ζ4Dζdδ + 6*C5*ζ5*Dζdδ + 7*C6*ζ6*Dζdδ-10.5*B6*Log(ζ)*ζ6*Dζdδ _
		   -1.5*B6*Dζdδ*ζ5+ 8*C7*ζ7*Dζdδ
		  Return Dvdδ
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DvdτcForLastV() As Double
		  Dvdτc = Dζdτc*(1 + C2*ζ2+ C3*ζ3 + C4*ζ4 + C5*ζ5 + (C6-1.5*B6*Log(ζ)*ζ6 + C7*ζ7) _
		  + ζ*( 2*C2*ζ*Dζdτc+ 3*C3*ζ2*Dζdτc + 4*C4*ζ3*Dζdτc + 5*C5*ζ4*Dζdτc -1.5*B6*Dζdτc/ζ)*ζ6 _
		  - 9.0*B6*Log(ζ)*ζ5*Dζdτc+ 7*C7*ζ6*Dζdτc)
		  Return Dvdτc
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Dvdχ1ℓForLastV() As Double
		  Dvdχ1ℓ = ζ*( DC2dχ1ℓ*ζ2+ DC3dχ1ℓ*ζ3 + DC4dχ1ℓ*ζ4 + DC5dχ1ℓ*ζ5 + DC6dχ1ℓ*ζ6 + DC7dχ1ℓ*ζ7)
		  Return Dvdχ1ℓ
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Dvdχ2ℓForLastV() As Double
		  Dvdχ2ℓ = ζ*( DC2dχ2ℓ*ζ2+ DC3dχ2ℓ*ζ3 + DC4dχ2ℓ*ζ4 + DC5dχ2ℓ*ζ5 + DC6dχ2ℓ*ζ6 + DC7dχ2ℓ*ζ7)
		  Return Dvdχ2ℓ
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DΨOrbdδForLastV() As Double
		  Var LogVIV0 As Double = Log(V/V0)
		  DΨOrbdδ = DP0dδ/V5 + DP0dδ*P2/V3 + P0*DP2dδ/V3 + DP0dδ*P3/V2 + P0*DP3dδ/V2 _
		  + DP0dδ*P4/V + P0*DP4dδ/V + DP0dδ*P5*LogVIV0 + P0*DP5dδ*LogVIV0 _
		  + DP0dδ*P6*V + P0*DP6dδ*V + 15*DP0dδ*B6*LogVIV0*V + 15*P0*DB6dδ*LogVIV0*V + DP0dδ*P7*V2 +P0*DP7dδ*V2 _
		  -5*P0*Dvdδ/V6 -3* P0*P2*Dvdδ/V4 -2* P0*P3*Dvdδ/V3 - P0*P4*Dvdδ/V2 + P0*P5*V0*Dvdδ/V + P0*P6*Dvdδ _
		  +15*P0*B6*V0*Dvdδ +15*P0*B6*Log(V/V0)*Dvdδ + 2*P0*P7*V*Dvdδ
		  Return DΨOrbdδ 
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DΨOrbdτcForLastV() As Double
		  Var LogVIV0 As Double = Log(V/V0)
		  ΨOrb = -5* P0*Dvdτc/V6 -3* P0*P2*Dvdτc/V4 + -2*P0*P3*Dvdτc/V3 - P0*P4*Dvdτc/V2 + P0*P5*V0*Dvdτc/V + P0*P6* Dvdτc
		  +15*P0*B6*V0*Dvdτc +15*P0*B6*LogVIV0*Dvdτc + 2* P0*P7*V*Dvdτc
		  Return DΨOrbdτc 
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DΨOrbdχ1ℓForLastV() As Double
		  Var LogVIV0 As Double = Log(V/V0)
		  DΨOrbdχ1ℓ = DP0dχ1ℓ/V5 + DP0dχ1ℓ*P2/V3 + P0*DP2dχ1ℓ/V3 + DP0dχ1ℓ*P3/V2 + P0*DP3dχ1ℓ/V2 _
		  + DP0dχ1ℓ*P4/V + P0*DP4dχ1ℓ/V + DP0dχ1ℓ*P5*LogVIV0 + P0*DP5dχ1ℓ*LogVIV0 _
		  + DP0dχ1ℓ*P6*V + P0*DP6dχ1ℓ*V + 15*DP0dχ1ℓ*B6*LogVIV0*V + 15*P0*DB6dχ1ℓ*LogVIV0*V + DP0dχ1ℓ*P7*V2 +P0*DP7dχ1ℓ*V2 _
		  -5*P0*Dvdχ1ℓ/V6 -3* P0*P2*Dvdχ1ℓ/V4 -2* P0*P3*Dvdχ1ℓ/V3 - P0*P4*Dvdχ1ℓ/V2 + P0*P5*V0*Dvdχ1ℓ/V + P0*P6*Dvdχ1ℓ _
		  +15*P0*B6*V0*Dvdχ1ℓ +15*P0*B6*Log(V/V0)*Dvdχ1ℓ + 2*P0*P7*V*Dvdχ1ℓ
		  Return DΨOrbdχ1ℓ 
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DΨOrbdχ2ℓForLastV() As Double
		  Var LogVIV0 As Double = Log(V/V0)
		  DΨOrbdχ2ℓ = DP0dχ2ℓ/V5 + DP0dχ2ℓ*P2/V3 + P0*DP2dχ2ℓ/V3 + DP0dχ2ℓ*P3/V2 + P0*DP3dχ2ℓ/V2 _
		  + DP0dχ2ℓ*P4/V + P0*DP4dχ2ℓ/V + DP0dχ2ℓ*P5*LogVIV0 + P0*DP5dχ2ℓ*LogVIV0 _
		  + DP0dχ2ℓ*P6*V + P0*DP6dχ2ℓ*V + 15*DP0dχ2ℓ*B6*LogVIV0*V + 15*P0*DB6dχ2ℓ*LogVIV0*V + DP0dχ2ℓ*P7*V2 +P0*DP7dχ2ℓ*V2 _
		  -5*P0*Dvdχ2ℓ/V6 -3* P0*P2*Dvdχ2ℓ/V4 -2* P0*P3*Dvdχ2ℓ/V3 - P0*P4*Dvdχ2ℓ/V2 + P0*P5*V0*Dvdχ2ℓ/V + P0*P6*Dvdχ2ℓ _
		  +15*P0*B6*V0*Dvdχ2ℓ +15*P0*B6*Log(V/V0)*Dvdχ2ℓ + 2*P0*P7*V*Dvdχ2ℓ
		  Return DΨOrbdχ2ℓ 
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function VAtTime(τ As Double) As Double
		  ζ = (5/(256*η*(τc-τ)))^0.125
		  ζ2 = ζ*ζ
		  ζ3 = ζ2*ζ
		  ζ4 = ζ3*ζ
		  ζ5 = ζ4*ζ
		  ζ6 = ζ5*ζ
		  ζ7 = ζ6*ζ
		  V = ζ*(1 + C2*ζ2+ C3*ζ3 + C4*ζ4 + C5*ζ5 + (C6-1.5*B6*Log(ζ))*ζ6 + C7*ζ7)
		  V2 = V*V
		  V3 = V2*V
		  V4 = V3*V
		  V5 = V4*V
		  V6 = V5*V
		  V7 = V6*V
		  Dζdτc =-0.0764277840621157*(1/(η*(-τ + τc)))^0.125/(-τ + τc)
		  Dζdδ = 0.0214953142674701*δ^2*(1/(η*(-τ + τc)))^0.125/η^2 + 0.0382138920310579*(1/(η*(-τ + τc)))^0.125/η
		  Return V
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function VDotForLastV() As Double
		  VDot = A0/3*V7*V2*(1.0 + A2*V2 + A3*V3+ A4*V4 + A5*V5 + (A6+B6*Log(V))*V6 + A7*V7)
		  Return VDot
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ΨOrbForLastV() As Double
		  Var LogVIV0 As Double = Log(V/V0)
		  ΨOrb = Ψc + P0/V5 + P0*P2/V3 + P0*P3/V2 + P0*P4/V + P0*P5*LogVIV0 + P0*P6*V+15*P0*B6*LogVIV0*V+ P0*P7*V2
		  Return ΨOrb
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

	#tag Property, Flags = &h21
		Private DA0dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DA0dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DA0dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DA2dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DA2dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DA2dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DA3dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DA3dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DA3dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DA4dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DA4dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DA4dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DA5dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DA5dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DA5dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DA6dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DA6dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DA6dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DA7dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DA7dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DA7dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DB6dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DB6dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DB6dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DC2dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DC2dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DC2dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DC3dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DC3dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DC3dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DC4dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DC4dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DC4dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DC5dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DC5dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DC5dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DC6dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DC6dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DC6dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DC7dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DC7dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DC7dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DP0dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DP0dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DP0dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DP2dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DP2dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DP2dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DP3dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DP3dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DP3dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DP4dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DP4dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DP4dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DP5dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DP5dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DP5dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DP6dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DP6dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DP6dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DP7dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DP7dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DP7dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Dvdδ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Dvdτc As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Dvdχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Dvdχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Dβ3dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Dβ3dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Dβ3dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Dβ5dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Dβ5dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Dβ5dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Dβ6dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Dβ6dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Dβ6dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Dβ7dδ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Dβ7dχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Dβ7dχ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Dζdτc As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DΨOrbdδ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DΨOrbdτc As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DΨOrbdχ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DΨOrbdχ2ℓ As Double
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
		Private VDot As Double
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

	#tag Property, Flags = &h21
		Private γE As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private δ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ζ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ζ0 As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ζ2 As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ζ3 As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ζ4 As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ζ5 As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ζ6 As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ζ7 As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private η As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private π As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private τc As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private χ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private χ2ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Ψc As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ΨOrb As Double
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
	#tag EndViewBehavior
End Class
#tag EndClass
