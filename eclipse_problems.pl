% Constraing Programming Lab - Jeffrey Herr
:- lib(ic).
:- lib(lists).
:- lib(branch_and_bound).

% 1.  the tea problem 
getTea(Teas) :-
	
	Teas = [X,Y,Z],

	Teas :: [0..20],

	20 #= X + Y + Z,
	570 #= 30*X + 27*Y + 21*Z,

	Cost #= -Z,

	minimize(labeling(Teas), Cost).



% 2.  beer barrel
whichBarrel(Beer) :-
	Beer :: [15..31],

	Barrels = [15, 31, 19, 20, 16, 18],
	member(Beer, Barrels),

	15+31+19+20+16+18 #= 3*Y + Beer,

	write(Beer).

% 3.  max digit thingy
digitize(Digits) :-
	Digits = [A1, A2, A3, B1, B2, C1, C2, D1, D2],
	Digits :: [1..9],

	alldifferent(Digits),

	(100*A1 + 10*A2 + A3) * (10*B1 + B2) #= (10*C1 + C2) * (10*D1 + D2),
	X #= -(10*C1 + C2) * (10*D1 + D2),

	minimize(labeling(Digits), X).


% 4.  Egg insurance
basket(Eggs) :-
	Eggs = [Egg],
	Eggs :: [0..100000],

	Egg #= 2*_ +1,
	Egg #= 3*_ +1,
	Egg #= 4*_ +1,
	Egg #= 5*_ +1,
	Egg #= 6*_ +1,
	Egg #= 7*_,

	minimize(labeling(Eggs), Egg).


% 5.  what the hay
hay(Weights) :-
	Weights = [One, Two, Three, Four, Five],
	Weights :: [0..300],

	X is (110 + 112 + 113 + 114 + 115 + 116 + 117 + 118 + 120 + 121) // 4,

	X #= One + Two + Three + Four + Five,
	110 #= One + Two,
	112 #= One + Three,
	121 #= Four + Five,
	120 #= Five + Three,

	labeling(Weights).


% 6.  planets
spell(Planets) :-
	Alphabet = [A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],
	Planets = [P,L,A,N,E,T,S],
	Alphabet :: [0..100],


	alldifferent(Alphabet),

	Cost #= P+L+A+N+E+T+S,

	P + L + U + T + O #= 40,
	U+R+A+N+U+S #= 36,
	N+E+P+T+U+N+E #= 29,
	S+A+T+U+R+N #= 33,
	J+U+P+I+T+E+R #= 50,
	M+A+R+S #= 32,
	E+A+R+T+H #= 31,
	M+O+O+N #= 36,
	V+E+N+U+S #= 39,
	M+E+R+C+U+R+Y #=33,
	S+U+N #= 18,

	minimize(labeling(Planets), Cost).


% 7. wines
wine(Nephews) :-

	A = [FourA, ThreeA, TwoA, OneA, EmptyA], 
	B = [FourB, ThreeB, TwoB, OneB, EmptyB], 
	C = [FourC, ThreeC, TwoC, OneC, EmptyC], 
	D = [FourD, ThreeD, TwoD, OneD, EmptyD], 
	E = [FourE, ThreeE, TwoE, OneE, EmptyE],

	A :: [1,2,3,4,5,6,7,8,9],
	B :: [1,2,3,4,5,6,7,8,9],
	C :: [1,2,3,4,5,6,7,8,9],
	D :: [1,2,3,4,5,6,7,8,9],
	E :: [1,2,3,4,5,6,7,8,9],

	%alldifferent(Nephews),

	FourA + ThreeA + TwoA + OneA + EmptyA #= 9,
	FourB + ThreeB + TwoB + OneB + EmptyB #= 9,
	FourC + ThreeC + TwoC + OneC + EmptyC #= 9,
	FourD + ThreeD + TwoD + OneD + EmptyD #= 9,
	FourE + ThreeE + TwoE + OneE + EmptyE #= 9,

	FourA + FourB + FourC + FourD + FourE #= 9,
	ThreeA + ThreeB + ThreeC + ThreeD + ThreeE #= 9,
	TwoA + TwoB + TwoC + TwoD + TwoE #= 9,
	OneA + OneB + OneC + OneD + OneE #= 9,
	EmptyA + EmptyB + EmptyC + EmptyD + EmptE #= 9,

	4*FourA + 3*ThreeA + 2*TwoA + OneA + 0*EmptyA #= 18,
	4*FourB + 3*ThreeB + 2*TwoB + OneB + 0*EmptyB #= 18,
	4*FourC + 3*ThreeC + 2*TwoC + OneC + 0*EmptyC #= 18,
	4*FourD + 3*ThreeD + 2*TwoD + OneD + 0*EmptyD #= 18,
	4*FourE + 3*ThreeE + 2*TwoE + OneE + 0*EmptyE #= 18,

	
	labeling(A),
	labeling(B),
	labeling(C),
	labeling(D),
	labeling(E),


	Nephews = [A,B,C,D,E].













