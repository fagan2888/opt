global file
file = fopen('results/res_ex1_1e.txt', 'w');
f = @(x) (x - 1).^7;
bisection(f, 0.95, 1.01, 12);