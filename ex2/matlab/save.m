function save(s)
    global file
    sp = strsplit(s, '  ');
    s = '';
    for j = 1:length(sp)        
        s = [s, sp{j}];
        if j < length(sp) 
            for i = 1:(25 - length(sp{j}))
                s = [s, ' '];
            end
        end
    end
    fprintf(file, s);
    fprintf(s);
end