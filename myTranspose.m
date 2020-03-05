function A_T = myTranspose(A)
    A_T = zeros(size(A,2), size(A,1));
    % go through the rows of A and form the columns of A_T
    for r = 1:size(A, 1)
        for c = 1:size(A, 2)
            A_T(c, r) = A(r, c);
        end
    end
end
