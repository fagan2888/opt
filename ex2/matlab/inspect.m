function fun = inspect(f, twopoints)
    if twopoints == null
    end
    function val = nested(x)
      global xs
      global fs
      xs(length(xs) + 1) = x;
      val = f(x);
      fs(length(fs) + 1) = val;
      method = '';
      target = xs(length(xs));
      if length(xs) > 3          
          a = xs(length(xs) - 3);
          b = xs(length(xs) - 2);
          c = xs(length(xs) - 1);          
          fa = fs(length(xs) - 3);
          fb = fs(length(xs) - 2);
          fc = fs(length(fs) - 1);                             
          m = 0.5*(a - b);
          s = fb/fc;          
          q = fc/fa;
          r = fb/fa;
          p = s*(2.0*m*q*(q - r) - (b - c)*(r - 1.0));
          q = (q - 1.0)*(r - 1.0)*(s - 1.0);         
          if p > 0, q = -q; else p = -p; end;
          quadratic = b + p/q;
          if abs((quadratic - target) / target) < 1e-12
              method = 'Inverse quadratic interpolation between last 3 points.';
          end            
      end
      if length(xs) > 2
          for a_idx = 1:length(xs) - 1
              for b_idx = (a_idx + 1):length(xs) - 1
                  a = xs(a_idx);
                  b = xs(b_idx);
                  fa = fs(a_idx);
                  fb = fs(b_idx);
                  interesction = b - fb * (b - a) / (fb - fa);
                  if abs((interesction - target) / target) < 1e-12
                      method = sprintf('linear interpolation (secant) between x_%d, x_%d', a_idx, b_idx);
                  end   
                  if abs(((a + b) / 2 - target) / target) < 1e-12
                      method = sprintf('bisection between x_%d, x_%d', a_idx, b_idx);
                  end                  
              end
          end
      end
      if length(xs) <= 2      
          method = 'initial point';
      end
      save(sprintf('iter = %d,  x = %d,  f(x) = %d,  method = %s\n', length(xs), x, val, method));
    end
    fun = @(x) nested(x);
end