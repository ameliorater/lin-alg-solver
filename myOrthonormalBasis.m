% This program finds an orthonormal basis for any set of vectors
% Author: Alexander

function Basis = myOrthonormalBasis(V)
    % Returns a matrix (basis) with an orthonormal basis for the columns of
    % V as its columns
    rows = size(V,1);
    cols = size(V,2);
    
    % start with making the first unit vector
    Basis = zeros(rows,cols);
    u1 = V(:,1) / myLength(V(:,1));
    Basis(:,1) = u1;
    % project the remaining columns and make unit vectors
    for i = 2 : cols
        p = zeros(rows,1);
        % this loop performs the projection shortcut for a vector onto an
        % orthonormal basis by summing each column of the Basis multiplied
        % by the dot product of said column and the vector to be projected
        for j = 1:cols
            p = p + Basis(:,j) * myDotProduct(Basis(:,j),V(:,i));
        end
        e = V(:,i) - p;
        ui = e / myLength(e);
        Basis(:,i) = ui;
    end
end

function l = myLength(v)
    l = 0;
    % sums all of the squares of the entries in v
    for i = 1:size(v)
        l = l + v(i)^2;
    end
    % takes square root
    l = sqrt(l);
end

% This function finds the dot product between two vectors: a and b
function d = myDotProduct(a, b)
    d = 0;
    % sums the products of the entries in the same positions in a and b
    if (size(a) == size(b))
        for i = 1 : size(a)
            d = d + (a(i) * b(i));
        end
    else
        error('dimensions of a and b do not match!')
    end
end