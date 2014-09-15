global file
file = fopen('results/res_ex1_3c_i.txt', 'w');
newton(@(x) x.^3 - 8, @(x) 3 * x.^2, 0.1, 12);
file = fopen('results/res_ex1_3c_ii.txt', 'w');
newton(@(x) x.^3 - 8, @(x) 3 * x.^2, 4, 12);
file = fopen('results/res_ex1_3c_iii.txt', 'w');
newton(@(x) x.^3 - 8, @(x) 3 * x.^2, -0.2, 12);
file = fopen('results/res_ex1_3c_iv.txt', 'w');
newton(@(x) x.^3 - 8, @(x) 3 * x.^2, 1000, 12);