l = dir('.');

for i = 1:length(l)
  name = l(i).name;
  if strfind(name, 'ex') == 1 
    fprintf(name);
    fprintf('\n');
    run(name);
  end
end