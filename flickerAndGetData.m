function [data time] = flickerAndGetData(ai, samplingFrequency, refreshRate, ...
    numOfFlicker, flickerMonitor, img, imgBG, flickerTimingMatrix, flickerTimingMatrixColumn, ...
    symbolDuration, preDuration, postDuration, preFixationTime, postFixationTime, data,time, restDuration)
    
%   includeParameter
  section = 1:samplingFrequency/refreshRate;
  
  
  %% draw first image
  if numOfFlicker ~=0
    for ii = 1:((numOfFlicker^2))
      Screen('DrawTexture', flickerMonitor, imgBG.textures(2), [], img.positions(ii, :))
    end
    
  end
 Screen('Flip', flickerMonitor);
 
%% get data on pre-stimuli intarval   %%%%%%%%%%%%%%%%%%%%%%%% Need to chenge for Emotive

  for jj = 1: preFixationTime * refreshRate
    [tempData tempTime] = getdata(ai, samplingFrequency/refreshRate);
    data(section + (jj-1) * samplingFrequency/refreshRate,:) = tempData;
    time(section + (jj-1) * samplingFrequency/refreshRate,:) = tempTime;
  end

  
  
  
  

 %% get data on stimuli intarval 
  pre = preFixationTime * refreshRate;
  
  for jj = pre + (1 :   preDuration * refreshRate)

	  %stimuli control
    if numOfFlicker ~=0
      for ii = 1:((numOfFlicker^2))
        Screen('DrawTexture', flickerMonitor, img.textures(flickerTimingMatrix(jj - pre,ii)+1), [], img.positions(ii, :))
      end
      Screen('Flip', flickerMonitor);
    end
	
	%getting data
	[tempData tempTime] = getdata(ai,samplingFrequency/refreshRate);
    data(section + (jj-1) * samplingFrequency/refreshRate,:) = tempData;
    time(section + (jj-1) * samplingFrequency/refreshRate,:) = tempTime;
  end

    %     for ii = 1:((numOfFlicker^2))
%         Screen('DrawTexture', flickerMonitor, img.textures(2), [], img.positions(ii, :))
%     end
%     Screen('Flip', flickerMonitor);
if numOfFlicker ~=0
    for ii = 1:((numOfFlicker^2))
      Screen('DrawTexture', flickerMonitor, imgBG.textures(2), [], img.positions(ii, :))
    end
    
  end
 Screen('Flip', flickerMonitor);
    pause(restDuration);
  
  pre = (preFixationTime + restDuration + preDuration) * refreshRate;  
    
  for jj = pre + (1 :   postDuration * refreshRate)

	  %stimuli control
    if numOfFlicker ~=0
      for ii = 1:((numOfFlicker^2))
        Screen('DrawTexture', flickerMonitor, img.textures(flickerTimingMatrixColumn(jj - pre,ii)+1), [], img.positions(ii, :))
      end
      Screen('Flip', flickerMonitor);
    end
	
	%getting data
	[tempData tempTime] = getdata(ai,samplingFrequency/refreshRate);
    data(section + (jj-1) * samplingFrequency/refreshRate,:) = tempData;
    time(section + (jj-1) * samplingFrequency/refreshRate,:) = tempTime;
  end
    
    if numOfFlicker ~=0
      for ii = 1:((numOfFlicker^2))
        Screen('DrawTexture', flickerMonitor, imgBG.textures(2), [], img.positions(ii, :))
      end
    
    end
    Screen('Flip', flickerMonitor);
  
  
  %% get data on post-stimuli intarval 
  post = ceil(pre +  symbolDuration * refreshRate) + 1;
  for jj = post + (1 : postFixationTime * refreshRate)
    [tempData tempTime] = getdata(ai,samplingFrequency/refreshRate);
    data(section + (jj-1) * samplingFrequency/refreshRate,:) = tempData;
    time(section + (jj-1) * samplingFrequency/refreshRate,:) = tempTime;
  end
  
  
  
end


