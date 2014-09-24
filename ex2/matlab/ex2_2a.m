global file
init();
file = fopen('results/res_ex2_2a_-2.txt', 'w');
fzero(inspect(@(x) 2 * x ^ 3 - 4 * x ^ 2 + 3 * x + 1, false), -1);

init();
file = fopen('results/res_ex2_2a_2.txt', 'w');
fzero(inspect(@(x) 2 * x ^ 3 - 4 * x ^ 2 + 3 * x + 1, false), 2);