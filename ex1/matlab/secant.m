function secant(f, x0, x1, maxit)
    assert(f(x0) * f(x1) < 0)
    i = 0;
    save(sprintf('Initial points a0=%f, f(a0)=%f, b0=%f, f(b0)=%f\n', ...
             x0, f(x0), x1, f(x1)));
    while (i < maxit) && abs(x0 - x1) > 1e-8        
        x2 = x1 - f(x1) * (x1 - x0) / (f(x1) - f(x0));
        x0 = x1;
        x1 = x2;        
        i = i + 1;        
        save(sprintf('a%d=%.16f, f(a%d)=%.16f, b%d=%.16f, f(b%d)=%.16f\n', ... 
                 i, x0, i, f(x0), i, x1, i, f(x1)));
    end
end