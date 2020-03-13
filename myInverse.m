% This program finds the inverse of any NxN matrix
% Author: Alexander

function AI = myInverse(A)
    n = size(A, 1);

    AI = zeros(n);
    D = A;
    if (size(A,1) ~= size(A,2))
        disp('A is not square. Please make sure that you enter a square matrix.')
    else
        %compute determinant to make sure the matrix can be inverted
        %first we make a U matrix
        for j = 1:n-1
            for i = 1+j:n
                D(i,:) = D(i,:) - (D(i,j)/D(j,j)) * D(j,:);
            end
        end

        %Multiply on main diagonal of D to compute the determinant
        dA = 1;
        for i = 1:n
            dA = dA * D(i,i);
        end
        if (dA ~= 0)
            % disp('There is an inverse for A')
            %compute inverse
            I = eye(n);
            G = [A I];
            %elimante the lower portion
            for j = 1:n-1
                for i = 1+j:n
                    G(i,:) = G(i,:) - (G(i,j)/G(j,j)) * G(j,:);
                end
            end
            %perform a similar task to elimate the upper portion
            for j = n:-1:2
                for i = j-1:-1:1
                    G(i,:) = G(i,:) - (G(i,j)/G(j,j)) * G(j,:);
                end
            end
            %reduce left side to I by division
            for i = 1:n
                G(i,:) = G(i,:) / G(i,i);
            end
            
            %retrieve new inverse
            AI = G(1:n,n+1:2*n);
    
        else
            disp('There is no inverse for A because the determinant is zero')
        end
    end    
end