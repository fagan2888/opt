global file
init()
file = fopen('results/res_ex2_1a.txt', 'w');
fzerotx(inspect(@(x) 2 * x ^ 3 - 4 * x ^ 2 + 3 * x + 1), [-2, 2]);