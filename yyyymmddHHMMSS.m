function timeStr = yyyymmddHHMMSS()

timeClock = fix(clock);

timeStr = sprintf('%04d%02d%02d-%02d%02d%02d', timeClock(1), timeClock(2), timeClock(3), timeClock(4), timeClock(5), timeClock(6));

end
