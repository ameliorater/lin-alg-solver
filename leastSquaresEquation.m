function outputStr = leastSquaresEquation(filename, n)
    % read in the whole csv to both matrices
    A = readmatrix(filename + ".csv");
    b = readmatrix(filename + ".csv");

    % trim each matrix to contain the correct entries
    A = A(:, 1);
    b = b(:, 2);
    onesCol = ones(size(A,1), 1);
    A = [onesCol A];
    
    for c = 2:n
        % add all the columns (x^2, etc.)
        A_pow = A(:,2).^c;
        A = [A A_pow];
    end

    % find the transpose of A
    A_T = myTranspose(A);
    
    % find the intermediate term A * A_T
    A_T_A = A_T * A;
    
    % invert (A * A_T), multiply by A_T, and multiply by b to get solution
    ls_sol = myInverse(A_T_A) * A_T * b;
    
    outputStr = "";
    for i = 1:size(ls_sol, 1)
        outputStr = outputStr + "(" + ls_sol(i, 1) + ")*x^" + (i-1);
        if i ~= size(ls_sol, 1)
            outputStr = outputStr + " + ";
        end
    end
end