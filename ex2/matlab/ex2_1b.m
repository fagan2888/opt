global file
init();
file = fopen('results/res_ex2_1b_fzero.txt', 'w');
fzerotx(inspect(@(x) 1.1 * x^3 - 2.6*x - 2.6049), [-1.95, 2.4]);

init();
file = fopen('results/res_ex2_1b_wheeler.txt', 'w');
wheeler(inspect(@(x) 1.1 * x^3 - 2.6*x - 2.6049), -1.95, 2.4, 11);
