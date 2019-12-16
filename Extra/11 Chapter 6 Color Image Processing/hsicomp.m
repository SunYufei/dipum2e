function comp = hsicomp(hsi)
    fh = hsi(:, :, 1);
    fs = hsi(:, :, 2);
    fi = hsi(:, :, 3);
    
    [M, N] = size(fh);
    for i = 1:M
        for j = 1:N
            if fh(i, j) <= 0.5
                fh(i, j) = 0.5 + fh(i, j);
            else
                fh(i, j) = -0.5 + fh(i, j);
            end
        end
    end
    
    fi = 1 - fi;
    
    comp = cat(3, fh, fs, fi);