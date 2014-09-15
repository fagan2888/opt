global file
file = fopen('results/res_ex1_1d.txt', 'w');
f = @(x) x^7 - 7*x^6 + 21*x^5 - 35*x^4 + 35 * x^3 - 21 * x^2 + 7*x - 1;
bisection(f, 0.95, 1.01, 12);