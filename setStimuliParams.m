function [preFixationTime postFixationTime numOfFlicker flickerFreqs flickerFreqsColumn] = setStimuliParams(experimentMode, refreshRate)


 
	

% Name of flags
% includeFlagParameter
includeParameter

% set sitmuli parameters
preFixationTime = 1; % in increments of 0.5 sec
postFixationTime = 1; % in increments of 0.5 sec

% numOfFlicker = inputCheck('Input target number.', 1:1:6);
numOfFlicker = 6;
flickerFreqs = zeros(1,((numOfFlicker^2)));
flickerFreqsColumn = zeros(1,((numOfFlicker^2)));

numTotalOfFlicker = numOfFlicker*numOfFlicker;
flickerRefreshRate = [15, 13, 11, 10, 8, 7]; % 9 6
allFlickerFreqs = zeros(6,6);   % (1,8)
allFlickerFreqsColumn = zeros(6,6);
for i = 1:6
  for j = 1:6
    allFlickerFreqs(i,j) =  refreshRate ./ flickerRefreshRate(i); %[8 9.2 10.9 12 13.3 15 17.1 20]
  end
end
allFlickerFreqsColumn = transpose(allFlickerFreqs);

switch experimentMode
  case freqMode
    switch numOfFlicker
      

      case 1
        for ii = 1:((numOfFlicker^2))
          flickerFreqs(1,ii) = allFlickerFreqs(1,ii);
          flickerFreqsColumn(1,ii) = flickerFreqs(1,ii);
        end

      case 2
        kk = 1;
        for ii = 1:numOfFlicker
          for jj = 1:numOfFlicker
            flickerFreqs(1,kk) = allFlickerFreqs(ii,jj);
            kk = kk+1;
          end
        end
        
        kk = 1;
        for ii = 1:numOfFlicker
          for jj = 1:numOfFlicker
            flickerFreqsColumn(1,kk) = allFlickerFreqsColumn(ii,jj);
            kk = kk+1;
          end
        end

      case 3
        kk = 1;
        for ii = 1:numOfFlicker
          for jj = 1:numOfFlicker
            flickerFreqs(1,kk) = allFlickerFreqs(ii,jj);
            kk = kk+1;
          end
        end
        
        kk = 1;
        for ii = 1:numOfFlicker
          for jj = 1:numOfFlicker
            flickerFreqsColumn(1,kk) = allFlickerFreqsColumn(ii,jj);
            kk = kk+1;
          end
        end
      case 4
        kk = 1;
        for ii = 1:numOfFlicker
          for jj = 1:numOfFlicker
            flickerFreqs(1,kk) = allFlickerFreqs(ii,jj);
            kk = kk+1;
          end
        end
        
        kk = 1;
        for ii = 1:numOfFlicker
          for jj = 1:numOfFlicker
            flickerFreqsColumn(1,kk) = allFlickerFreqsColumn(ii,jj);
            kk = kk+1;
          end
        end
      case 5
        kk = 1;
        for ii = 1:numOfFlicker
          for jj = 1:numOfFlicker
            flickerFreqs(1,kk) = allFlickerFreqs(ii,jj);
            kk = kk+1;
          end
        end
        
        kk = 1;
        for ii = 1:numOfFlicker
          for jj = 1:numOfFlicker
            flickerFreqsColumn(1,kk) = allFlickerFreqsColumn(ii,jj);
            kk = kk+1;
          end
        end
      case 6
        kk = 1;
        for ii = 1:numOfFlicker
          for jj = 1:numOfFlicker
            flickerFreqs(1,kk) = allFlickerFreqs(ii,jj);
            kk = kk+1;
          end
        end
        
        kk = 1;
        for ii = 1:numOfFlicker
          for jj = 1:numOfFlicker
            flickerFreqsColumn(1,kk) = allFlickerFreqsColumn(ii,jj);
            kk = kk+1;
          end
        end
    end



%     flickerRefreshRate = [15 13 11 10 9 8 7 6];
%     allFlickerFreqs = zeros(1,8);	
%     allFlickerFreqs(1,:) =  refreshRate ./ flickerRefreshRate;
% 	
%     numOfFlicker = inputCheck('Input target number.', 2:2:8);
%     flickerFreqs = zeros(1,numOfFlicker);
%	
% 	  %[8 9.2 10.9 12 13.3 15 17.1 20];
% 	  for ii = 1:numOfFlicker
% 		  flickerFreqs(1,ii) = inputCheck(['Input' num2str(ii) 'th flicker Frequency.'], allFlickerFreqs(1,:));
%     end
    
  case backGroundMode
    numOfFlicker =1;
    flickerFreqs =0;
    flickerFreqsColumn =0;
    
  otherwise
        	warning('Unexpected experiment mode.');
end
    
	
		


	

