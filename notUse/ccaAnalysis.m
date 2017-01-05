function [detectedSymbols]=ccaAnalysis(data, flickerFreqs, analysisPeriod, samplingFrequency, ccaOrder, analysisChannel,delay,resamplingFrequency)


	% filtering and resample
	[B,A] = butter(4,[5 50]/(0.5*samplingFrequency));
	temp = filter(B,A,data);
	temp2 = resample(temp,resamplingFrequency,samplingFrequency);
    %analysisPeriod=2;
    
    %frames=temp2(delay+1:delay+analysisLength*resamplingFrequency/samplingFrequency,2:length(buffer(1,:)));
  
    %mat = delay + analysisPeriod * resamplingFrequency
    frames=temp2(delay + 1 : delay + analysisPeriod * resamplingFrequency, analysisChannel);
    y = makeSinusoidForCCA(resamplingFrequency, analysisPeriod * resamplingFrequency, flickerFreqs, ccaOrder);
    E = makeCCA2Matrix(length(flickerFreqs),ccaOrder);
    [r ccaWeight]=CCA2(frames, y);
    w=sqrt(ccaWeight.^2*E);
    [~, detectedSymbols] = max(w);
	
	
	
    
end