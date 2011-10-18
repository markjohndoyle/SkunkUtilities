print "Generating TM\n"

maxFuel = 1000
maxLaser = 2040
for i in (0..100)
  laserTempVal = Math.sin(i) * 100
  if (laserTempVal < 0)
    laserTempVal = 0;
  end
  laserTemp = laserTempVal.floor.to_s(2).rjust(11, '0')
  fuel = maxFuel
  maxFuel = maxFuel - 10
  flightHours = i
  

  print  laserTempVal.floor.to_s + " : " + fuel.to_s + " : " + flightHours.to_s + "\n"
  tm = laserTemp + fuel.to_s(2).rjust(16, '0') + flightHours.to_s(2).rjust(32, '0')
  print tm + "\n"
end