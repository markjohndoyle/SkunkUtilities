print "Generating TM\n"

maxFuel = 1000
maxLaser = 2040
for i in (0..100)
  laserTempVal = Math.sin(i) * 100
  if (laserTempVal < 0)
    laserTempVal = 0;
  end
  laserTemp = laserTempVal.floor.to_s(2).rjust(11, '0')
  fuel = maxFuel.to_s(2).rjust(16, '0')
  maxFuel = maxFuel - 10
  flightHours = i.to_s(2).rjust(32, '0')
  

  tm = laserTemp + fuel + flightHours
  print tm + "\n"
end