function [flickerTimingMatrix, flickerTimingMatrixColumn] = setFlickerTimingMatrix(experimentMode, ...
  numOfFlicker, refreshRate, flickerFreqs, flickerFreqsColumn, symbolDuration)
	
  % Name of flags
%   includeFlagParameter
  includeParameter
  
  
  %params


	switch experimentMode
	 	case freqMode
      allFlickerNumber = round(refreshRate*symbolDuration);
			flickerTimingMatrix = zeros(allFlickerNumber, numOfFlicker);
	 		flickerTimingMatrixColumn = zeros(allFlickerNumber, numOfFlicker);
	 		
	 	 %% duty 1:1
      
     
	 		for ii = 1:((numOfFlicker^2))
	 			oneFlickerLength =  round(refreshRate / flickerFreqs(1,ii));
	 			blockNumber = ceil(flickerFreqs(1,ii) * symbolDuration);
	 			% make flickerTimingMatrix
	 			temp = zeros(2 * oneFlickerLength, 1);
        temp(1: oneFlickerLength, 1) = (ii*2)-2;
	 			temp(oneFlickerLength + 1: 2 * oneFlickerLength, 1) = (ii*2)-1;
	 			temp = repmat(temp, blockNumber ,1); 
	 			flickerTimingMatrix(:, ii) = temp(1:allFlickerNumber ,1);
        
        oneFlickerLengthColumn =  round(refreshRate / flickerFreqsColumn(1,ii));
	 			blockNumberColumn = ceil(flickerFreqsColumn(1,ii) * symbolDuration);
        tempColumn = zeros(2 * oneFlickerLengthColumn, 1);
        tempColumn(1: oneFlickerLengthColumn, 1) = (ii*2)-2;
	 			tempColumn(oneFlickerLengthColumn + 1: 2 * oneFlickerLengthColumn, 1) = (ii*2)-1;
	 			tempColumn = repmat(tempColumn, blockNumberColumn ,1); 
        flickerTimingMatrixColumn(:, ii) = tempColumn(1:allFlickerNumber ,1);
	 		end
	 		
	 		
	 	
	 	case backGroundMode
	 		allFlickerNumber = round(refreshRate*symbolDuration);
			flickerTimingMatrix = zeros(allFlickerNumber, numOfFlicker);
      flickerTimingMatrixColumn = zeros(allFlickerNumber, numOfFlicker);
	 		 	
	 	otherwise
        	warning('Unexpected experiment mode.');
	end

end