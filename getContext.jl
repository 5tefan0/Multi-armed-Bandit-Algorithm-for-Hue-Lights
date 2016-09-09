#-------------------------------------------------------------------------------
#  DESCRIPTION: In determines the current context (at time t)
#-------------------------------------------------------------------------------

function getContext(t)

  k=4 # number of the context features

  x =zeros(k)

# the first entry of the feature vector is the time of the day (military time)
# it is an integer
  x[1]=rand(DiscreteUniform(1,24))
  println("\n The time is $(x[1]) o'clock \n")

# the second entry of the feature vector is the temperature (Fahrenheit)
  x[2]=rand(DiscreteUniform(20,90))
  println("\n The temperature is $(x[2]) F degrees \n")

# the third entry of the feature vector is the weather
# (1: rainy, 11: cloudy, 21: partially cloudy, 31: sunny)
  weather=rand(DiscreteUniform(1,4))
  if weather==1
    x[3]=1
    println("\n The weather is rainy \n")
  elseif weather==2
    x[3]=11
    println("\n The weather is cloudy \n")
  elseif weather==3
    x[3]=21
    println("\n The weather is partially cloudy \n")
  else x[3]=31
    println("\n The weather is sunny \n")
  end

# the fourth entry is the day of the week
 day=rand(DiscreteUniform(1,7))
 if day<=4
   x[4]=day
   if day==1
     println("\n It is Monday \n")
   elseif day==2
     println("\n It is Tuesday \n")
   elseif day==3
     println("\n It is Wednesday \n")
   else
     println("\n It is Thursday \n")
   end
 elseif day==5
   x[4]=24
   println("\n It is Friday \n")
 elseif day==6
   x[4]=25
   println("\n It is Saturday \n")
 else
   x[4]=26
   println("\n It is Sunday \n")
 end



return x

end

#-------------------------------------------------------------------------------
