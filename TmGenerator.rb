print "Generating TM\n"

for i in (0..100)
  laserTemp = i.to_s(2).rjust(11, '0')
  print laserTemp + "\n"
end