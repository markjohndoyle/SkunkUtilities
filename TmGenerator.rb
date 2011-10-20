print "Generating TM\n"

binTm = File.new("binTm.txt", 'w')
decTm = File.new("decTm.txt", 'w')
  
maxFuel = 1500
maxLaser = 2040

# CCSDS Header stuff
versionNum = "000" 
typeIndicator = "0"
secHdrFlag = "0"
apid = "1111101000".rjust(11, '0')
seqFlags = "00"

for i in (0..100)
  laserTempVal = Math.sin(i) * 50
  if (laserTempVal < 0)
    laserTempVal = 0;
  end
  laserTemp = laserTempVal.floor.to_s(2).rjust(11, '0')
  
  fuel = maxFuel
  maxFuel = maxFuel - 10
  
  flightHours = i
  

  decValues =  laserTempVal.floor.to_s + " : " + fuel.to_s + " : " + flightHours.to_s
  payload = laserTemp + fuel.to_s(2).rjust(16, '0') + flightHours.to_s(2).rjust(32, '0')
  
  # CCSDS Header stuff that requires calculating
  seqCount = i.to_s(2).rjust(14, '0')
  packetLength = payload.length.to_s(2).rjust(16, '0')
  
  tm = versionNum + typeIndicator + secHdrFlag + apid + seqFlags + seqCount + packetLength + payload

  print tm + "\n"
  binTm.write(tm + "\n")
  decTm.write(decValues + "\n")
end

print "Generation complete\n"