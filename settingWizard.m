function [experimentMode trial screenNum subject preDuration restDuration postDuration symbolDuration] = settingWizard
	
	
	% Name of flags
% 	includeFlagParameter
    includeParameter
	
	% wizard
	subject = input('Input subject name: ', 's');
    
    screenNum = inputCheck('Input Screen Number: ', 1:2);        % Add
	
	experimentMode = inputCheck('What type of experiment?  freqMode: 1, backGroundMode: 2', 1:2);

	trial = inputCheck('How many trials?', 1:480);
  
    preDuration = inputCheck('Input the Pre-Blinking DURATION (sec).', 0:.1:10);
  
  restDuration = inputCheck('Input the Resting DURATION (sec).', 0:.1:10);
  
  postDuration = inputCheck('Input the Post-Blinking DURATION (sec).', 0:.1:10);
  
  symbolDuration = preDuration + 0.1 + postDuration;
	
%     symbolDuration = inputCheck('Input the SYMBOL DURATION (sec).', .5:.1:8);
% 		
% 	onlineAnalysis = inputCheck('Do you want to execute the online analysis?', [0 1]);
	 
	
end