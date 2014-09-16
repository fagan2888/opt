global file
file = fopen('results/res_ex1_3f_i.txt', 'w');
wheeler(@(x) x.^3 - 8, 0.9, 10, 12);
file = fopen('results/res_ex1_3f_ii.txt', 'w');
wheeler(@(x) x.^3 - 8, -0.2, 3, 12);
file = fopen('results/res_ex1_3f_iii.txt', 'w');
wheeler(@(x) x.^3 - 8, 0.1, 6, 12);
file = fopen('results/res_ex1_3f_iv.txt', 'w');
wheeler(@(x) x.^3 - 8, -100, 100, 12);