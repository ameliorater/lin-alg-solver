function ls_sol = leastSquaresSolution(filename)
    % read in the whole csv to both matrices
    A = readmatrix(filename + ".csv");
    b = readmatrix(filename + ".csv");

    % trim each matrix to contain the correct entries
    A = A(:, 1:size(A, 2)-2);
    b = b(:, size(A, 2)+2);

    % find the transpose of A
    A_T = myTranspose(A);
    
    % find the intermediate term A * A_T
    A_T_A = A_T * A;
    
    % invert (A * A_T), multiply by A_T, and multiply by b to get solution
    ls_sol = myInverse(A_T_A) * A_T * b;
end