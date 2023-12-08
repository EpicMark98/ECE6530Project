function y = linearInterpolation(x, interpolationFactor)
    % linearInterpolation(x, interpolationFactor)
    % This function performs linear interpolation on the matrix x. The
    % interpolation factor is interpolationFactor.
    xSize = size(x);
    % if the original size is N, and the interpolation factor is a, the 
    % result after interpolation is of size (N-1)*a + 1.
    y1 = zeros(xSize(1), interpolationFactor*(xSize(2)-1) + 1);
    rowwiseSamplePoints = 1:1/interpolationFactor:xSize(2);
    for i=1:xSize(1)
        y1(i, :) = interp1(1:xSize(2), x(i, :), rowwiseSamplePoints);
    end
    y1 = y1'; % transpose 
    
    y1Size = size(y1);
    y2 = zeros(y1Size(1), interpolationFactor*(y1Size(2)-1) + 1);
    columnwiseSamplePoints = 1:1/interpolationFactor:y1Size(2);
    for j=1:y1Size(1)
        y2(j, :) = interp1(1:y1Size(2), y1(j, :), columnwiseSamplePoints);
    end
    y = y2';
end