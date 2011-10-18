print "Generating TM\n"

binTm = File.new("binTm.txt", 'w')
decTm = File.new("decTm.txt", 'w')
  
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
  

  decValues =  laserTempVal.floor.to_s + " : " + fuel.to_s + " : " + flightHours.to_s
  tm = laserTemp + fuel.to_s(2).rjust(16, '0') + flightHours.to_s(2).rjust(32, '0')
 
  binTm.write(tm + "\n")
  decTm.write(decValues + "\n")
end