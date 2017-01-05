function y = makeSinusoidForCCA(sampleRate, frameLength, freq,order)

t = (1:frameLength)'/sampleRate*2*pi;

y = zeros(frameLength, length(freq)*2*order);
for ii = 1:length(freq)
	for jj=1:order
		y(:,2*(ii-1)* order+2*jj-1 ) = sin(freq(ii)*jj*t);
		y(:, 2*(ii-1)* order+2*jj) = cos(freq(ii)*jj*t);

	end

end
end