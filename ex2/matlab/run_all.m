l = dir('.');

for i = 1:length(l)
  name = l(i).name;
  fprintf('%s\n', name);
  if (~isempty(strfind(name, 'ex'))) && (name(length(name)) == 'm')
    fprintf(name);
    fprintf('\n');
    run(name);
  end
end