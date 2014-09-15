function newton(f, df, x0, maxit)
    i = 0;
    save(sprintf('Initial points a0=%f, f(a0)=%f\n', ...
             x0, f(x0)));
        
    x1 = x0;
    x0 = Inf;
    while (i < maxit) && abs(x0 - x1) > 1e-4        
        x0 = x1;
        x1 = x1 - f(x1) / df(x1);
        i = i + 1;        
        save(sprintf('a%d=%.16f, f(a%d)=%.16f\n', ... 
                 i, x1, i, f(x1)));
    end
end