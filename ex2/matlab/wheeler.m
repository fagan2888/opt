function wheeler(f, x0, x1, maxit)
    global iter
    assert(f(x0) * f(x1) < 0)
    i = 0;
    u = 1;
    fx0 = f(x0);
    fx1 = f(x1);
    while (iter < maxit) && abs(x0 - x1) > 1e-8 
        x2 = x1 - fx1 * (x1 - x0) / (fx1 - u * fx0);        
        if f(x2) * f(x1) < 0 
            u = 1;
            x0 = x1;
            fx0 = fx1;
            x1 = x2;  
            fx1 = f(x2);            
        else
            u = u / 2;
        end        
        i = i + 1;        
    end
end
