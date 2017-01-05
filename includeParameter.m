    ON = 1;
	OFF = 0;
	
  	freqMode = 1;
	backGroundMode = 2;
	
% %     Duration Rate
%     symbolDuration = 4.1;
%     preDuration = 2;
%     restDuration = 0.1;
%     postDuration = 2;
    
    saving = ON;
	onlineAnalysisChannel = [2 5:7];
	onlineAnalysisResampleRate = 240;
	%onlineAnalysisSampleInterval = 5;
	%delayToBeIgnored = .1;
	delay=120;
	ccaOrder = 2;
	overLapSamples = 0;
    
    samplingFrequency = 1200;
	%EEGChannels = 16 + (1:14); % 1 to 16 and 17 to 32
    EEGChannels = 1:32;
    chNumber = length(EEGChannels);
    
    % screenNum = 0; 
    % define screen number
	refreshRate = 120;
    
%     flickerRefreshRate = [15 13 11 10 9 8 7 6];
% 	
% 	allFlickerFreqs = zeros(1,8);	
% 	allFlickerFreqs(1,:) =  refreshRate ./ flickerRefreshRate;
% 	
% 	numOfFlicker = inputCheck('Input target number.', 2:2:8);
% 	
% 	
% 	flickerFreqs = zeros(1,targetNumber);
% 	
% 	%[8 9.2 10.9 12 13.3 15 17.1 20];
% 	for ii = 1:numOfFlicker
% 		flickerFreqs(1,ii) = inputCheck(['Input' num2str(ii) 'th flicker Frequency.'], allFlickerFreqs(1,:));
% 	end