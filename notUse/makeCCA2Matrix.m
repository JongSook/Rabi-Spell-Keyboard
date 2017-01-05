function E = makeCCA2Matrix(numOfFreqs,order)

E = zeros(numOfFreqs*2*order, numOfFreqs);

for ii=1:2*order
	E(ii:2*order:end, :) = eye(numOfFreqs);

end

end