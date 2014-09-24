global file
init();
file = fopen('results/res_ex2_2b_minus.txt', 'w');
fzero(inspect(@(x) 1.1 * x^3 - 2.6*x - 2.6049), -1.95);

init();
file = fopen('results/res_ex2_2b_plus.txt', 'w');
fzero(inspect(@(x) 1.1 * x^3 - 2.6*x - 2.6049), 2.4);