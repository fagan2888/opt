global file
file = fopen('results/res_ex1_1b.txt', 'w');
bisection(@(x) x.^3 - 8, 0.5, 3.1, 12);