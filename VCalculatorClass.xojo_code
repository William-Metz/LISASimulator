#tag Class
Protected Class VCalculatorClass
	#tag Method, Flags = &h0
		Sub Constructor(Theτc As Double, δ As Double, χ_1ℓ As Double, χ_2ℓ As Double)
		  δ = P.δ
		  η = (1-δ*δ)*0.25
		  π = 3.14159265358979324
		  γE = 0.577215664901533
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
		Sub dvdδAtTime(τ As Double)
		  dvdδ = ((5/256)^0.125)*(((5/256)^0.875)*(-91495*δ*π*(1/4 - δ^2/4)/1512 - 358675*δ*π/ 12096 - 11*δ*(11*δ^2/16 + 32/21)*(12*π - 3*χ1ℓ*(-25*(δ^2)/16 + 113*(δ + 1)^2/48 + 25/16) - 3*χ2ℓ*(-25*δ^2/16 + 113*(1 - δ)^2/48 + 25/16))/4 + 11*δ*(-189*π*(1/4 - δ^2/4)/4 - 4159*π/336 - 2*χ1ℓ*(-809*δ^2/336 - 281*(1/4 - δ^2/4)^2/8 + (δ + 1)^2*(1159*δ^2/384 + 38299/8064) + 809/336) - 2*χ2ℓ*(-809*δ^2/336 - 281*(1/4 - δ^2/4)^2/8 + (1 - δ)^2*(1159*δ^2/384 + 38299/8064) + 809/336))/8 - χ1ℓ*(-8709*δ*(1/4 - δ^2/4)^2/64 + 257023*δ*(1/4 - δ^2/4)/1008 - 1195759*δ/36288 + (δ + 1)^2*(-100019*δ*(1/4 - δ^2/4)/3456 + 796069*δ/16128) + (2*δ + 2)*(796069*δ^2/32256 + 100019*(1/4 - δ^2/4)^2/3456 + 254599/13824)) - χ2ℓ*(-8709*δ*(1/4 - δ^2/4)^2/64 + 257023*δ*(1/4 - δ^2/4)/1008 - 1195759*δ/36288 + (1 - δ)^2*(-100019*δ*(1/4 - δ^2/4)/3456 + 796069*δ/16128) + (2*δ - 2)*(796069*δ^2/32256 + 100019*(1/4 - δ^2/4)^2/3456 + 254599/13824)) - (11*δ^2/16 + 32/21)^2*(-3*χ1ℓ*(19*δ/12 + 113/24) - 3*χ2ℓ*(19*δ/12 - 113/24)) + (11*δ^2/16 + 32/21)*(189*δ*π/8 - 2*χ1ℓ*(281*δ*(1/4 - δ^2/4)/8 + 1159*δ*(δ + 1)^2/192 - 809*δ/168 + (2*δ + 2)*(1159*δ^2/384 + 38299/8064)) - 2*χ2ℓ*(281*δ*(1/4 - δ^2/4)/8 + 1159*δ*(1 - δ)^2/192 - 809*δ/168 + (2*δ - 2)*(1159*δ^2/384 + 38299/8064))) + (-χ1ℓ*(19*δ/12 + 113/24) - χ2ℓ*(19*δ/12 - 113/24))*(-13661*δ^2/4032 - 247*χ1*χ2/24 + 721*χ1ℓ*χ2ℓ/24 + 59*(1/4 - δ^2/4)^2/9 + 2*(1 - δ)^2*(233*χ2^2/384 - 719*χ2ℓ^2/384) - 2*(δ + 1)^2*(233*χ1^2/384 - 719*χ1ℓ^2/348) + 259361/36288) + (4*π - χ1ℓ*(-25*δ^2/16 + 113*(δ + 1)^2/48 + 25/16) - χ2ℓ*(-25*δ^2/16 + 113*(1 - δ)^2/48 + 25/16))*(-59*δ*(1/4 - δ^2/4)/9 - 13661*δ/2016 + 2*(2*δ - 2)*(233*χ2^2/384 - 719*χ2ℓ^2/384) - 2*(2*δ + 2)*(233*χ1^2/384 - 719*χ1ℓ^2/348)))*(1/(-τ + τc))^0.875 + ((5/256)^0.75)*(451*δ*π^2*(1/4 - δ^2/4)/96 - 56669509*δ*(1/4 - δ^2/4)^2/290304 + 541*δ*(1/4 - δ^2/4)/1792 - 737*δ*(11*δ^2/16 + 32/21)^2/384 + 11*δ*(-314203*δ^2/193536 - 5681*χ1*χ2/1152 + 16583*χ1ℓ*χ2ℓ/1152 + 1357*(1/4 - δ^2/4)^2/432 + 23*(1 - δ)^2*(233*χ2^2/384 - 719*χ2ℓ^2/384)/24 - 23*(δ + 1)^2*(233*χ1^2/384 - 719*χ1ℓ^2/348)/24 + 5965303/1741824)/8 + π*χ1ℓ*(37*δ/6 + 75/4)/2 + π*χ2ℓ*(37*δ/6 - 75/4)/2 + (11*δ^2/16 + 32/21)*(-1357*δ*(1/4 - δ^2/4)/432 - 314203*δ/96768 + 23*(2*δ - 2)*(233*χ2^2/384 - 719*χ2ℓ^2/384)/24 - 23*(2*δ + 2)*(233*χ1^2/384 - 719*χ1ℓ^2/348)/24) + 12*(-2*χ1ℓ*(19*δ/12 + 113/24) - 2*χ2ℓ*(19*δ/12 - 113/24))*(4*π - χ1ℓ*(-25*δ^2/16 + 113*(δ + 1)^2/48 + 25/16) - χ2ℓ*(-25*δ^2/16 + 113*(1 - δ)^2/48 + 25/16))/25)*(1/(-τ + τc))^0.75 + ((5/256)^0.625)*(-63*δ*π/16 + 11*δ*(12*π/5 - 3*χ1ℓ*(-25*δ^2/16 + 113*(δ + 1)^2/48 + 25/16)/5 - 3*χ2ℓ*(-25*δ^2/16 + 113*(1 - δ)^2/48 + 25/16)/5)/8 + χ1ℓ*(281*δ*(1/4 - δ^2/4)/8 + 1159*δ*(δ + 1)^2/192 - 809*δ/168 + (2*δ + 2)*(1159*δ^2/384 + 38299/8064))/3 + χ2ℓ*(281*δ*(1/4 - δ^2/4)/8 + 1159*δ*(1 - δ)^2/192 - 809*δ/168 + (2*δ - 2)*(1159*δ^2/384 + 38299/8064))/3 + (11*δ^2/16 + 32/21)*(-3*χ1ℓ*(19*δ/12 + 113/24)/5 - 3*χ2ℓ*(19*δ/12 - 113/24)/5))*(1/(-τ + τc))^0.625 + ((5/256)^0.5)*(59*δ*(1/4 - δ^2/4)/72 + 55*δ*(11*δ^2/16 + 32/21)/96 + 13661*δ/16128 - (2*δ - 2)*(233*χ2^2/384 - 719*χ2ℓ^2/384)/4 + (2*δ + 2)*(233*χ1^2/384 - 719*χ1ℓ^2/348)/4)*(1/(-τ + τc))^0.5 + ((5/256)^0.375)*(χ1ℓ*(19*δ/12 + 113/24)/5 + χ2ℓ*(19*δ/12 - 113/24)/5)*(1/(-τ + τc))^0.375 + 11*((5/256)^0.25)*δ*(1/(-τ + τc))^0.25/48)*(1/(-τ + τc))^0.125
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dvdτcAtTime(τ As Double)
		  dvdτc = ((5/256)^0.125)*(-0.875*((5/256)^0.875)*(91495*η^2*π/ 1512 _
		  + 358675*η*π/6048 + 4415*π/4032 _
		  - χ1ℓ*(2903*η^3/32 _
		  - 257023*η^2/1008 _
		  + 1195759*η/18144 + (δ + 1)^2*(100019*η^2/3456 _
		  - 796069*η/8064 + 130325/3024)) _
		  - χ2ℓ*(2903*η^3/32 _
		  - 257023*η^2/1008 _
		  + 1195759*η/18144 _
		  + (1 - δ)^2*(100019*η^2/3456 _
		  - 796069*η/8064 _
		  + 130325/3024)) _
		  - (743/336 - 11*η/4)^2*(12*π _
		  - 3*χ1ℓ*(25*η/4 + 113*(δ + 1)^2/48) _
		  - 3*χ2ℓ*(25*η/4 + 113*(1 - δ)^2/48)) _
		  + (743/336 - 11*η/4)*(-189*η*π/4 _
		  - 4159*π/336 - 2*χ1ℓ*(-281*η^2/8 _
		  + 809*η/84 + (31319/4032 _
		  - 1159*η/96)*(δ + 1)^2) _
		  - 2*χ2ℓ*(-281*η^2/8 _
		  + 809*η/84 + (1 - δ)^2*(31319/4032 - 1159*η/96))) _
		  + (4*π - χ1ℓ*(25*η/4 + 113*(δ + 1)^2/48) _
		  - χ2ℓ*(25*η/4 + 113*(1 - δ)^2/48))*(59*η^2/9 + 13661*η/1008 - 247*χ1*χ2/24 _
		  + 721*χ1ℓ*χ2ℓ/24 + 2*(1 - δ)^2*(233*χ2^2/384 - 719*χ2ℓ^2/384) _
		  - 2*(δ + 1)^2*(233*χ1^2/384 - 719*χ1ℓ^2/348) + 34103/9072))*(1/(-τ + τc))^0.875/(-τ + τc) _
		  - 0.75*((5/256)^0.75)*(856*γE/105 + 56669509*η^3/435456 - 451*η^2*π^2/96 - 541*η^2/1792 - 8*π^2/3 _
		  + π*χ1ℓ*(151*η/6 + 75*(δ + 1)^2/8)/2 + π*χ2ℓ*(151*η/6 + 75*(1 - δ)^2/8)/2 - 67*(743/336 - 11*η/4)^3/144 _
		  + (743/336 - 11*η/4)*(1357*η^2/432 + 314203*η/48384 - 5681*χ1*χ2/1152 _
		  + 16583*χ1ℓ*χ2ℓ/1152 + 23*(1 - δ)^2*(233*χ2^2/384 - 719*χ2ℓ^2/384)/24 _
		  - 23*(δ + 1)^2*(233*χ1^2/384 - 719*χ1ℓ^2/348)/24 + 784369/435456) _
		  + 12*(4*π - χ1ℓ*(25*η/4 + 113*(δ + 1)^2/48) - χ2ℓ*(25*η/4 + 113*(1 - δ)^2/48))^2/25 _
		  - 15308362903/279417600 + 428*log(16)/105)*(1/(-τ + τc))^0.75/(-τ + τc) _
		  - 6.11428571428571*((5/256)^0.75)*(1/(-τ + τc))^0.75*log(((5/256)^0.125)*(1/(-τ + τc))^0.125)/(-τ + τc) _
		  - 1.01904761904762*((5/256)^0.75)*(1/(-τ + τc))^0.75/(-τ + τc) _
		  - 0.625*((5/256)^0.625)*(63*η*π/8 + 4159*π/2016 + χ1ℓ*(-281*η^2/8 + 809*η/84 _
		  + (31319/4032 - 1159*η/96)*(δ + 1)^2)/3 + χ2ℓ*(-281*η^2/8 + 809*η/84 _
		  + (1 - δ)^2*(31319/4032 - 1159*η/96))/3 + (743/336 - 11*η/4)*(12*π/5 - 3*χ1ℓ*(25*η/4 + 113*(δ + 1)^2/48)/5 _
		  - 3*χ2ℓ*(25*η/4 + 113*(1 - δ)^2/48)/5))*(1/(-τ + τc))^0.625/(-τ + τc) - 0.5*((5/256)^0.5)*(-59*η^2/72 - 13661*η/8064 _
		  + 247*χ1*χ2/192 - 721*χ1ℓ*χ2ℓ/192 - (1 - δ)^2*(233*χ2^2/384 - 719*χ2ℓ^2/384)/4 + 5*(743/336 - 11*η/4)^2/24 _
		  + (δ + 1)^2*(233*χ1^2/384 - 719*χ1ℓ^2/348)/4 - 34103/72576)*(1/(-τ + τc))^0.5/(-τ + τc) _
		  - 0.375*((5/256)^0.375)*(-4*π/5 + χ1ℓ*(25*η/4 + 113*(δ + 1)^2/48)/5 _
		  + χ2ℓ*(25*η/4 + 113*(1 - δ)^2/48)/5)*(1/(-τ + τc))^0.375/(-τ + τc) _
		  - 0.25*((5/256)^0.25)*(743/2016 - 11*η/24)*(1/(-τ + τc))^0.25/(-τ + τc))*(1/(-τ + τc))^0.125 _
		  - 0.125*((5/256)^0.125)*(((5/256)^0.875)*(91495*η^2*π/1512 + 358675*η*π/6048 _
		  + 4415*π/4032 - χ1ℓ*(2903*η^3/32 - 257023*η^2/1008 + 1195759*η/18144 _
		  + (δ + 1)^2*(100019*η^2/3456 - 796069*η/8064 + 130325/3024)) _
		  - χ2ℓ*(2903*η^3/32 - 257023*η^2/1008 + 1195759*η/18144 + (1 - δ)^2*(100019*η^2/3456 - 796069*η/8064 + 130325/3024)) _
		  - (743/336 - 11*η/4)^2*(12*π - 3*χ1ℓ*(25*η/4 + 113*(δ + 1)^2/48) - 3*χ2ℓ*(25*η/4 + 113*(1 - δ)^2/48)) _
		  + (743/336 - 11*η/4)*(-189*η*π/4 - 4159*π/336 - 2*χ1ℓ*(-281*η^2/8 + 809*η/84 + (31319/4032 - 1159*η/96)*(δ + 1)^2) _
		  - 2*χ2ℓ*(-281*η^2/8 + 809*η/84 + (1 - δ)^2*(31319/4032 - 1159*η/96))) _
		  + (4*π - χ1ℓ*(25*η/4 + 113*(δ + 1)^2/48) - χ2ℓ*(25*η/4 + 113*(1 - δ)^2/48))*(59*η^2/9 + 13661*η/1008 - 247*χ1*χ2/24 _
		  + 721*χ1ℓ*χ2ℓ/24 + 2*(1 - δ)^2*(233*χ2^2/384 - 719*χ2ℓ^2/384) - 2*(δ + 1)^2*(233*χ1^2/384 - 719*χ1ℓ^2/348) + 34103/9072))*(1/(-τ + τc))^0.875 _
		  + ((5/256)^0.75)*(856*γE/105 + 56669509*η^3/435456 - 451*η^2*π^2/96 - 541*η^2/1792 - 8*π^2/3 + π*χ1ℓ*(151*η/6 + 75*(δ + 1)^2/8)/2 _
		  + π*χ2ℓ*(151*η/6 + 75*(1 - δ)^2/8)/2 - 67*(743/336 - 11*η/4)^3/144 _
		  + (743/336 - 11*η/4)*(1357*η^2/432 + 314203*η/48384 - 5681*χ1*χ2/1152 _
		  + 16583*χ1ℓ*χ2ℓ/1152 + 23*(1 - δ)^2*(233*χ2^2/384 - 719*χ2ℓ^2/384)/24 _
		  - 23*(δ + 1)^2*(233*χ1^2/384 - 719*χ1ℓ^2/348)/24 + 784369/435456) _
		  + 12*(4*π - χ1ℓ*(25*η/4 + 113*(δ + 1)^2/48) - χ2ℓ*(25*η/4 + 113*(1 - δ)^2/48))^2/25 _
		  - 15308362903/279417600 + 428*log(16)/105)*(1/(-τ + τc))^0.75 _
		  + 856*((5/256)^0.75)*(1/(-τ + τc))^0.75*log(((5/256)^0.125)*(1/(-τ + τc))^0.125)/105 _
		  + ((5/256)^0.625)*(63*η*π/8 + 4159*π/2016 + χ1ℓ*(-281*η^2/8 + 809*η/84 _
		  + (31319/4032 - 1159*η/96)*(δ + 1)^2)/3 + χ2ℓ*(-281*η^2/8 + 809*η/84 _
		  + (1 - δ)^2*(31319/4032 - 1159*η/96))/3 + (743/336 - 11*η/4)*(12*π/5 - 3*χ1ℓ*(25*η/4 + 113*(δ + 1)^2/48)/5 _
		  - 3*χ2ℓ*(25*η/4 + 113*(1 - δ)^2/48)/5))*(1/(-τ + τc))^0.625 + ((5/256)^0.5)*(-59*η^2/72 _
		  - 13661*η/8064 + 247*χ1*χ2/192 - 721*χ1ℓ*χ2ℓ/192 - (1 - δ)^2*(233*χ2^2/384 - 719*χ2ℓ^2/384)/4 _
		  + 5*(743/336 - 11*η/4)^2/24 + (δ + 1)^2*(233*χ1^2/384 - 719*χ1ℓ^2/348)/4 - 34103/72576)*(1/(-τ + τc))^0.5 _
		  + ((5/256)^0.375)*(-4*π/5 + χ1ℓ*(25*η/4 + 113*(δ + 1)^2/48)/5 + χ2ℓ*(25*η/4 + 113*(1 - δ)^2/48)/5)*(1/(-τ + τc))^0.375 _
		  + ((5/256)^0.25)*(743/2016 - 11*η/24)*(1/(-τ + τc))^0.25 + 1)*(1/(-τ + τc))^0.125/(-τ + τc) τc)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dvdχ1ℓAtTime(τ As Double)
		  dvdχ1ℓ = ((5/256)^0.125)*(((5/256)^0.875)*(-2903*η^3/32 + 257023*η^2/1008 - 1195759*η/18144 - (743/336 - 11*η/4)^2*(-75*η/4 - 113*(δ + 1)^2/16) + (743/336 - 11*η/4)*(281*η^2/4 - 809*η/42 - 2*(31319/4032 - 1159*η/96)*(δ + 1)^2) - (δ + 1)^2*(100019*η^2/3456 - 796069*η/8064 + 130325/3024) + (-25*η/4 - 113*(δ + 1)^2/48)*(59*η^2/9 + 13661*η/1008 - 247*χ1*χ2/24 + 721*χ1ℓ*χ2ℓ/24 + 2*(1 - δ)^2*(233*χ2^2/384 - 719*χ2ℓ^2/384) - 2*(δ + 1)^2*(233*χ1^2/384 - 719*χ1ℓ^2/348) + 34103/9072) + (719*χ1ℓ*(δ + 1)^2/87 + 721*χ2ℓ/24)*(4*π - χ1ℓ*(25*η/4 + 113*(δ + 1)^2/48) - χ2ℓ*(25*η/4 + 113*(1 - δ)^2/48)))*(1/(-τ + τc))^0.875 + ((5/256)^0.75)*(π*(151*η/6 + 75*(δ + 1)^2/8)/2 + (743/336 - 11*η/4)*(16537*χ1ℓ*(δ + 1)^2/4176 + 16583*χ2ℓ/1152) + 12*(-25*η/2 - 113*(δ + 1)^2/24)*(4*π - χ1ℓ*(25*η/4 + 113*(δ + 1)^2/48) - χ2ℓ*(25*η/4 + 113*(1 - δ)^2/48))/25)*(1/(-τ + τc))^0.75 + ((5/256)^0.625) *(-281*η^2/24 + 809*η/252 + (743/336 - 11*η/4)*(-15*η/4 - 113*(δ + 1)^2/80) + (31319/4032 - 1159*η/96)*(δ + 1)^2/3)*(1/(-τ + τc))^0.625 + ((5/256)^0.5)*(-719*χ1ℓ*(δ + 1)^2/696 - 721*χ2ℓ/192)*(1/(-τ + τc))^0.5 + ((5/256)^0.375)*(5*η/4 + 113*(δ + 1)^2/240)*(1/(-τ + τc))^0.375)*(1/(-τ + τc))^0.125
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dvdχ2ℓAtTime(τ As Double)
		  dvdχ2ℓ = ((5/256)^0.125)*(((5/256)^0.875)*(-2903*η^3/32 + 257023*η^2/1008 - 1195759*η/18144 - (1 - δ)^2*(100019*η^2/3456 - 796069*η/8064 + 130325/3024) - (743/336 - 11*η/4)^2*(-75*η/4 - 113*(1 - δ)^2/16) + (743/336 - 11*η/4)*(281*η^2/4 - 809*η/42 - 2*(1 - δ)^2*(31319/4032 - 1159*η/96)) + (-25*η/4 - 113*(1 - δ)^2/48)*(59*η^2/9 + 13661*η/1008 - 247*χ1*χ2/24 + 721*χ1ℓ*χ2ℓ/24 + 2*(1 - δ)^2*(233*χ2^2/384 - 719*χ2ℓ^2/384) - 2*(δ + 1)^2*(233*χ1^2/384 - 719*χ1ℓ^2/348) + 34103/9072) + (721*χ1ℓ/24 - 719*χ2ℓ*(1 - δ)^2/96)*(4*π - χ1ℓ*(25*η/4 + 113*(δ + 1)^2/48) - χ2ℓ*(25*η/4 + 113*(1 - δ)^2/48)))*(1/(-τ + τc))^0.875 + ((5/256)^0.75)*(π*(151*η/6 + 75*(1 - δ)^2/8)/2 + (743/336 - 11*η/4)*(16583*χ1ℓ/1152 - 16537*χ2ℓ*(1 - δ)^2/4608) + 12*(-25*η/2 - 113*(1 - δ)^2/24)*(4*π - χ1ℓ*(25*η/4 + 113*(δ + 1)^2/48) - χ2ℓ*(25*η/4 + 113*(1 - δ)^2/48))/25)*(1/(-τ + τc))^0.75 + ((5/256)^0.625)*(-281*η^2/24 + 809*η/252 + (1 - δ)^2*(31319/4032 - 1159*η/96)/3 + (743/336 - 11*η/4)*(-15*η/4 - 113*(1 - δ)^2/80))*(1/(-τ + τc))^0.625 + ((5/256)^0.5)*(-721*χ1ℓ/192 + 719*χ2ℓ*(1 - δ)^2/768)*(1/(-τ + τc))^0.5 + ((5/256)^0.375)*(5*η/4 + 113*(1 - δ)^2/240)*(1/(-τ + τc))^0.375)*(1/(-τ + τc))^0.125
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
		  Dζdτc = -0.125/ζ7*5/(256*η*(τc-τ)*(τc-τ))
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
		Dζdτc As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		P As CaseInfoClass
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
		χ1 As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		χ1ℓ As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		χ2 As Double
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
			Name="χ1"
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
			Name="χ2"
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
	#tag EndViewBehavior
End Class
#tag EndClass
