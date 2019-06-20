function f = twodsin2(A, u0, v0, M, N)
    r = 0:M - 1;    % Row coordinates
    c = 0:N - 1;    % Column coordinates
    [C, R] = meshgrid(c, r);
    f = A * sin(u0 * R + v0 * C);