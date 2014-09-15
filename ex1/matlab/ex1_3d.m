global file
file = fopen('results/res_ex1_3d_i.txt', 'w');
secant(@(x) x.^3 - 8, 0.9, 10, 12);
file = fopen('results/res_ex1_3d_ii.txt', 'w');
secant(@(x) x.^3 - 8, -0.2, 3, 12);
file = fopen('results/res_ex1_3d_iii.txt', 'w');
secant(@(x) x.^3 - 8, 0.1, 6, 12);
file = fopen('results/res_ex1_3d_iv.txt', 'w');
secant(@(x) x.^3 - 8, -100, 100, 12);