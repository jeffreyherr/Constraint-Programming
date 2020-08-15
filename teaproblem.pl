
:- lib(ic).
:- lib(lists).
:- lib(branch_and_bound).

/**
*"Mrs. Spooner called this morning," said the honest grocer to his assistant. "She wants twenty pounds of tea at 2s. 41⁄2d. per lb. Of course we have a good 2s. *6d. tea, a slightly inferior at 2s. 3d., and a cheap Indian at 1s. 9d., but she is very particular always about her prices."
*"What do you propose to do?" asked the innocent assistant.
*"Do?" exclaimed the grocer. "Why, just mix up the three teas in different proportions so that the twenty pounds will work out fairly at the lady's price. Only *don't put in more of the best tea than you can help, as we make less profit on that, and of course you will use only our complete pound packets. Don't do any *weighing."
*How was the poor fellow to mix the three teas? Could eclipse have shown him how to do it? (Hint: 1s = 12d one shilling is 12 pence. You want to rescale to avoid *fractions.)
*/

getTea(Teas) :-
	
	Teas = [X,Y,Z],

	Teas :: [0..20],

	20 #= X + Y + Z,
	570 #= 30*X + 27*Y + 21*Z,

	Cost #= -Z,

	minimize(labeling(Teas), Cost).














