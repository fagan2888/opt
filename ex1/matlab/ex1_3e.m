global file
file = fopen('results/res_ex1_3e_i.txt', 'w');
regula_falsi(@(x) x.^3 - 8, 0.9, 10, 12);
file = fopen('results/res_ex1_3e_ii.txt', 'w');
regula_falsi(@(x) x.^3 - 8, -0.2, 3, 12);
file = fopen('results/res_ex1_3e_iii.txt', 'w');
regula_falsi(@(x) x.^3 - 8, 0.1, 6, 12);
file = fopen('results/res_ex1_3e_iv.txt', 'w');
regula_falsi(@(x) x.^3 - 8, -100, 100, 12);