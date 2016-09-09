#-------------------------------------------------------------------------------
#  DESCRIPTION: it creates a personality of the user
#-------------------------------------------------------------------------------
#  INPUTS : number of arms m,
#           contexts space
#  OUTPUT : for each context we define an optimal color and brightness
#-------------------------------------------------------------------------------

function createPersonality(colors, brightness, x::Array)

      # TIME
      if 22 <= x[1] <= 24 || 0 <= x[1] <= 6 # time: night (low light)   # at night only cyan/blue and low brightness
          # TEMPERATURE
          if 20 <= x[2] < 40
                # WEATHER
                if x[3] == 1 # rainy
                    # WEEKDAY
                    if 1 <= x[4] <= 4 # weekdays
                      bestColor = 5
                      bestBrightness = 2
                    else # x[4] > 4 # weekend
                      bestColor = 5
                      bestBrightness = 2
                    end #weekday
                elseif x[3] == 11 # cloudy
                    # WEEKDAY
                    if 1 <= x[4] <= 4 # weekdays
                      bestColor = 5
                      bestBrightness = 2
                    else # x[4] > 4 # weekend
                      bestColor = 5
                      bestBrightness = 2
                    end #weekday
                elseif x[3] == 21 # partially sunny
                    # WEEKDAY
                    if 1 <= x[4] <= 4 # weekdays
                      bestColor = 5
                      bestBrightness = 2
                    else # x[4] > 4 # weekend
                      bestColor = 5
                      bestBrightness = 2
                    end #weekday
                else #x[3] == 31 # sunny # sunny
                    # WEEKDAY
                    if 1 <= x[4] <= 4 # weekdays
                      bestColor = 5
                      bestBrightness = 2
                    else # x[4] > 4 # weekend
                      bestColor = 5
                      bestBrightness = 2
                    end #weekday
                end #weather
          elseif  40 <= x[2] < 60
              # WEATHER
              if x[3] == 1 # rainy
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 5
                    bestBrightness = 2
                  else # x[4] > 4 # weekend
                    bestColor = 5
                    bestBrightness = 2
                  end #weekday
              elseif x[3] == 11 # cloudy
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 5
                    bestBrightness = 2
                  else # x[4] > 4 # weekend
                    bestColor = 5
                    bestBrightness = 2
                  end #weekday
              elseif x[3] == 21 # partially sunny
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 5
                    bestBrightness = 2
                  else # x[4] > 4 # weekend
                    bestColor = 5
                    bestBrightness = 2
                  end #weekday
              else #x[3] == 31 # sunny # sunny
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 5
                    bestBrightness = 2
                  else # x[4] > 4 # weekend
                    bestColor = 5
                    bestBrightness = 2
                  end #weekday
              end #weather
          elseif  60 <= x[2] < 80
              # WEATHER
              if x[3] == 1 # rainy
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 5
                    bestBrightness = 2
                  else # x[4] > 4 # weekend
                    bestColor = 5
                    bestBrightness = 2
                  end #weekday
              elseif x[3] == 11 # cloudy
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 5
                    bestBrightness = 2
                  else # x[4] > 4 # weekend
                    bestColor = 5
                    bestBrightness = 2
                  end #weekday
              elseif x[3] == 21 # partially sunny
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 5
                    bestBrightness = 2
                  else # x[4] > 4 # weekend
                    bestColor = 5
                    bestBrightness = 2
                  end #weekday
              else #x[3] == 31 # sunny # sunny
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 5
                    bestBrightness = 2
                  else # x[4] > 4 # weekend
                    bestColor = 5
                    bestBrightness = 2
                  end #weekday
              end #weather
          else
              # WEATHER
              if x[3] == 1 # rainy
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 5
                    bestBrightness = 2
                  else # x[4] > 4 # weekend
                    bestColor = 5
                    bestBrightness = 2
                  end #weekday
              elseif x[3] == 11 # cloudy
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 5
                    bestBrightness = 2
                  else # x[4] > 4 # weekend
                    bestColor = 5
                    bestBrightness = 2
                  end #weekday
              elseif x[3] == 21 # partially sunny
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 5
                    bestBrightness = 2
                  else # x[4] > 4 # weekend
                    bestColor = 5
                    bestBrightness = 2
                  end #weekday
              else #x[3] == 31 # sunny # sunny
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 5
                    bestBrightness = 2
                  else # x[4] > 4 # weekend
                    bestColor = 5
                    bestBrightness = 2
                  end #weekday
              end #weather
          end #temperature

      elseif 6 < x[1] <= 12 # time: morning     # in the morning no red/pink, not too low brightness
          # TEMPERATURE
          if 20 <= x[2] < 40
              # WEATHER
              if x[3] == 1 # rainy
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 2
                    bestBrightness = 12 #since it is rainy a bit more brightness
                  else # x[4] > 4 # weekend
                    bestColor = 2
                    bestBrightness = 12 #since it is rainy a bit more brightness
                  end #weekday
              elseif x[3] == 11 # cloudy
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 2
                    bestBrightness = 12 #since it is cloudy a bit more brightness
                  else # x[4] > 4 # weekend
                    bestColor = 2
                    bestBrightness = 12 #since it is rainy a bit more brightness
                  end #weekday
              elseif x[3] == 21 # partially sunny
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 2
                    bestBrightness = 8
                  else # x[4] > 4 # weekend
                    bestColor = 2
                    bestBrightness = 8
                  end #weekday
              else #x[3] == 31 # sunny # sunny
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 2
                    bestBrightness = 8
                  else # x[4] > 4 # weekend
                    bestColor = 2
                    bestBrightness = 8
                  end #weekday
              end #weather
          elseif  40 <= x[2] < 60
              # WEATHER
              if x[3] == 1 # rainy
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 2
                    bestBrightness = 12 #since it is rainy a bit more brightness
                  else # x[4] > 4 # weekend
                    bestColor = 2
                    bestBrightness = 12 #since it is rainy a bit more brightness
                  end #weekday
              elseif x[3] == 11 # cloudy
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 2
                    bestBrightness = 12 #since it is cloudy a bit more brightness
                  else # x[4] > 4 # weekend
                    bestColor = 2
                    bestBrightness = 12 #since it is cloudy a bit more brightness
                  end #weekday
              elseif x[3] == 21 # partially sunny
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 2
                    bestBrightness = 8
                  else # x[4] > 4 # weekend
                    bestColor = 2
                    bestBrightness = 8
                  end #weekday
              else #x[3] == 31 # sunny # sunny
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 2
                    bestBrightness = 8
                  else # x[4] > 4 # weekend
                    bestColor = 2
                    bestBrightness = 8
                  end #weekday
              end #weather
          elseif  60 <= x[2] < 80
              # WEATHER
              if x[3] == 1 # rainy
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 2
                    bestBrightness = 12 #since it is rainy a bit more brightness
                  else # x[4] > 4 # weekend
                    bestColor = 2
                    bestBrightness = 12 #since it is rainy a bit more brightness
                  end #weekday
              elseif x[3] == 11 # cloudy
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 2
                    bestBrightness = 12 #since it is cloudy a bit more brightness
                  else # x[4] > 4 # weekend
                    bestColor = 2
                    bestBrightness = 12 #since it is cloudy a bit more brightness
                  end #weekday
              elseif x[3] == 21 # partially sunny
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 2
                    bestBrightness = 8
                  else # x[4] > 4 # weekend
                    bestColor = 2
                    bestBrightness = 8
                  end #weekday
              else #x[3] == 31 # sunny # sunny
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 2
                    bestBrightness = 8
                  else # x[4] > 4 # weekend
                    bestColor = 2
                    bestBrightness = 8
                  end #weekday
              end #weather
          else
              # WEATHER
              if x[3] == 1 # rainy
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 2
                    bestBrightness = 12 #since it is rainy a bit more brightness
                  else # x[4] > 4 # weekend
                    bestColor = 2
                    bestBrightness = 12 #since it is rainy a bit more brightness
                  end #weekday
              elseif x[3] == 11 # cloudy
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 2
                    bestBrightness = 12 #since it is cloudy a bit more brightness
                  else # x[4] > 4 # weekend
                    bestColor = 2
                    bestBrightness = 12 #since it is cloudy a bit more brightness
                  end #weekday
              elseif x[3] == 21 # partially sunny
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 2
                    bestBrightness = 8
                  else # x[4] > 4 # weekend
                    bestColor = 2
                    bestBrightness = 8
                  end #weekday
              else #x[3] == 31 # sunny # sunny
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 2
                    bestBrightness = 8
                  else # x[4] > 4 # weekend
                    bestColor = 2
                    bestBrightness = 8
                  end #weekday
              end #weather
          end #temperature

      elseif 12 < x[1] <= 18 # time: afternoon
          # TEMPERATURE
          if 20 <= x[2] < 40
              # WEATHER
              if x[3] == 1 # rainy
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 3
                    bestBrightness = 10
                  else # x[4] > 4 # weekend
                    bestColor = 3
                    bestBrightness = 10
                  end #weekday
              elseif x[3] == 11 # cloudy
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 3
                    bestBrightness = 10
                  else # x[4] > 4 # weekend
                    bestColor = 3
                    bestBrightness = 10
                  end #weekday
              elseif x[3] == 21 # partially sunny
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 3
                    bestBrightness = 10
                  else # x[4] > 4 # weekend
                    bestColor = 3
                    bestBrightness = 10
                  end #weekday
              else #x[3] == 31 # sunny # sunny
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 3
                    bestBrightness = 10
                  else # x[4] > 4 # weekend
                    bestColor = 3
                    bestBrightness = 10
                  end #weekday
              end #weather
          elseif  40 <= x[2] < 60
              # WEATHER
              if x[3] == 1 # rainy
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 3
                    bestBrightness = 10
                  else # x[4] > 4 # weekend
                    bestColor = 3
                    bestBrightness = 10
                  end #weekday
              elseif x[3] == 11 # cloudy
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 3
                    bestBrightness = 10
                  else # x[4] > 4 # weekend
                    bestColor = 3
                    bestBrightness = 10
                  end #weekday
              elseif x[3] == 21 # partially sunny
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 3
                    bestBrightness = 10
                  else # x[4] > 4 # weekend
                    bestColor = 3
                    bestBrightness = 10
                  end #weekday
              else #x[3] == 31 # sunny # sunny
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 3
                    bestBrightness = 10
                  else # x[4] > 4 # weekend
                    bestColor = 3
                    bestBrightness = 10
                  end #weekday
              end #weather
          elseif  60 <= x[2] < 80
              # WEATHER
              if x[3] == 1 # rainy
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 3
                    bestBrightness = 10
                  else # x[4] > 4 # weekend
                    bestColor = 3
                    bestBrightness = 10
                  end #weekday
              elseif x[3] == 11 # cloudy
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 3
                    bestBrightness = 10
                  else # x[4] > 4 # weekend
                    bestColor = 3
                    bestBrightness = 10
                  end #weekday
              elseif x[3] == 21 # partially sunny
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 3
                    bestBrightness = 10
                  else # x[4] > 4 # weekend
                    bestColor = 3
                    bestBrightness = 10
                  end #weekday
              else #x[3] == 31 # sunny # sunny
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 3
                    bestBrightness = 10
                  else # x[4] > 4 # weekend
                    bestColor = 3
                    bestBrightness = 10
                  end #weekday
              end #weather
          else
              # WEATHER
              if x[3] == 1 # rainy
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 3
                    bestBrightness = 10
                  else # x[4] > 4 # weekend
                    bestColor = 3
                    bestBrightness = 10
                  end #weekday
              elseif x[3] == 11 # cloudy
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 3
                    bestBrightness = 10
                  else # x[4] > 4 # weekend
                    bestColor = 3
                    bestBrightness = 10
                  end #weekday
              elseif x[3] == 21 # partially sunny
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 3
                    bestBrightness = 10
                  else # x[4] > 4 # weekend
                    bestColor = 3
                    bestBrightness = 10
                  end #weekday
              else #x[3] == 31 # sunny # sunny
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 3
                    bestBrightness = 10
                  else # x[4] > 4 # weekend
                    bestColor = 3
                    bestBrightness = 10
                  end #weekday
              end #weather
          end #temperature

      else # 18< x[1] <22 # time: evening   # evening all is possible
          # TEMPERATURE
          if 20 <= x[2] < 40
              # WEATHER
              if x[3] == 1 # rainy
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 6
                    bestBrightness = 7
                  else # x[4] > 4 # weekend
                    bestColor = 6
                    bestBrightness = 7
                  end #weekday
              elseif x[3] == 11 # cloudy
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 6
                    bestBrightness = 7
                  else # x[4] > 4 # weekend
                    bestColor = 6
                    bestBrightness = 7
                  end #weekday
              elseif x[3] == 21 # partially sunny
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 6
                    bestBrightness = 7
                  else # x[4] > 4 # weekend
                    bestColor = 6
                    bestBrightness = 7
                  end #weekday
              else #x[3] == 31 # sunny # sunny
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 6
                    bestBrightness = 7
                  else # x[4] > 4 # weekend
                    bestColor = 6
                    bestBrightness = 7
                  end #weekday
              end #weather
          elseif  40 <= x[2] < 60
              # WEATHER
              if x[3] == 1 # rainy
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 6
                    bestBrightness = 7
                  else # x[4] > 4 # weekend
                    bestColor = 6
                    bestBrightness = 7
                  end #weekday
              elseif x[3] == 11 # cloudy
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 6
                    bestBrightness = 7
                  else # x[4] > 4 # weekend
                    bestColor = 6
                    bestBrightness = 7
                  end #weekday
              elseif x[3] == 21 # partially sunny
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 6
                    bestBrightness = 7
                  else # x[4] > 4 # weekend
                    bestColor = 6
                    bestBrightness = 7
                  end #weekday
              else #x[3] == 31 # sunny # sunny
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 6
                    bestBrightness = 7
                  else # x[4] > 4 # weekend
                    bestColor = 6
                    bestBrightness = 7
                  end #weekday
              end #weather
          elseif  60 <= x[2] < 80
              # WEATHER
              if x[3] == 1 # rainy
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 6
                    bestBrightness = 7
                  else # x[4] > 4 # weekend
                    bestColor = 6
                    bestBrightness = 7
                  end #weekday
              elseif x[3] == 11 # cloudy
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 6
                    bestBrightness = 7
                  else # x[4] > 4 # weekend
                    bestColor = 6
                    bestBrightness = 7
                  end #weekday
              elseif x[3] == 21 # partially sunny
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 6
                    bestBrightness = 7
                  else # x[4] > 4 # weekend
                    bestColor = 6
                    bestBrightness = 7
                  end #weekday
              else #x[3] == 31 # sunny # sunny
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 6
                    bestBrightness = 7
                  else # x[4] > 4 # weekend
                    bestColor = 6
                    bestBrightness = 7
                  end #weekday
              end #weather
          else
              # WEATHER
              if x[3] == 1 # rainy
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 6
                    bestBrightness = 7
                  else # x[4] > 4 # weekend
                    bestColor = 6
                    bestBrightness = 7
                  end #weekday
              elseif x[3] == 11 # cloudy
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 6
                    bestBrightness = 7
                  else # x[4] > 4 # weekend
                    bestColor = 6
                    bestBrightness = 7
                  end #weekday
              elseif x[3] == 21 # partially sunny
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 6
                    bestBrightness = 7
                  else # x[4] > 4 # weekend
                    bestColor = 6
                    bestBrightness = 7
                  end #weekday
              else #x[3] == 31 # sunny # sunny
                  # WEEKDAY
                  if 1 <= x[4] <= 4 # weekdays
                    bestColor = 6
                    bestBrightness = 7
                  else # x[4] > 4 # weekend
                    bestColor = 6
                    bestBrightness = 7
                  end #weekday
              end #weather
          end #temperature
      end # time

      return (bestColor, bestBrightness)
end


# #-------------------------------------------------------------------------------
# #  DESCRIPTION: it creates a personality of the user
# #-------------------------------------------------------------------------------
# #  INPUTS : number of arms m,
# #           contexts space
# #  OUTPUT : for each context we define an optimal color and brightness
# #-------------------------------------------------------------------------------
#
# function createPersonality(colors, brightness, x::Array)
#
#       # TIME
#       if 22 <= x[1] <= 24 || 0 <= x[1] <= 6 # time: night (low light)   # at night only cyan/blue and low brightness
#           # TEMPERATURE
#           if 20 <= x[2] < 40
#                 # WEATHER
#                 if x[3] == 1 # rainy
#                     # WEEKDAY
#                     if 1 <= x[4] <= 4 # weekdays
#                       bestColor = DiscreteUniform(4,5)
#                       bestBrightness = DiscreteUniform(1,floor(brightness/3))
#                     else # x[4] > 4 # weekend
#                       bestColor = DiscreteUniform(4,5)
#                       bestBrightness = DiscreteUniform(1,floor(brightness/3))
#                     end #weekday
#                 elseif x[3] == 11 # cloudy
#                     # WEEKDAY
#                     if 1 <= x[4] <= 4 # weekdays
#                       bestColor = DiscreteUniform(4,5)
#                       bestBrightness = DiscreteUniform(1,floor(brightness/3))
#                     else # x[4] > 4 # weekend
#                       bestColor = DiscreteUniform(4,5)
#                       bestBrightness = DiscreteUniform(1,floor(brightness/3))
#                     end #weekday
#                 elseif x[3] == 21 # partially sunny
#                     # WEEKDAY
#                     if 1 <= x[4] <= 4 # weekdays
#                       bestColor = DiscreteUniform(4,5)
#                       bestBrightness = DiscreteUniform(1,floor(brightness/3))
#                     else # x[4] > 4 # weekend
#                       bestColor = DiscreteUniform(4,5)
#                       bestBrightness = DiscreteUniform(1,floor(brightness/3))
#                     end #weekday
#                 else #x[3] == 31 # sunny # sunny
#                     # WEEKDAY
#                     if 1 <= x[4] <= 4 # weekdays
#                       bestColor = DiscreteUniform(4,5)
#                       bestBrightness = DiscreteUniform(1,floor(brightness/3))
#                     else # x[4] > 4 # weekend
#                       bestColor = DiscreteUniform(4,5)
#                       bestBrightness = DiscreteUniform(1,floor(brightness/3))
#                     end #weekday
#                 end #weather
#           elseif  40 <= x[2] < 60
#               # WEATHER
#               if x[3] == 1 # rainy
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(4,5)
#                     bestBrightness = DiscreteUniform(1,floor(brightness/3))
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(4,5)
#                     bestBrightness = DiscreteUniform(1,floor(brightness/3))
#                   end #weekday
#               elseif x[3] == 11 # cloudy
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(4,5)
#                     bestBrightness = DiscreteUniform(1,floor(brightness/3))
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(4,5)
#                     bestBrightness = DiscreteUniform(1,floor(brightness/3))
#                   end #weekday
#               elseif x[3] == 21 # partially sunny
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(4,5)
#                     bestBrightness = DiscreteUniform(1,floor(brightness/3))
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(4,5)
#                     bestBrightness = DiscreteUniform(1,floor(brightness/3))
#                   end #weekday
#               else #x[3] == 31 # sunny # sunny
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(4,5)
#                     bestBrightness = DiscreteUniform(1,floor(brightness/3))
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(4,5)
#                     bestBrightness = DiscreteUniform(1,floor(brightness/3))
#                   end #weekday
#               end #weather
#           elseif  60 <= x[2] < 80
#               # WEATHER
#               if x[3] == 1 # rainy
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(4,5)
#                     bestBrightness = DiscreteUniform(1,floor(brightness/3))
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(4,5)
#                     bestBrightness = DiscreteUniform(1,floor(brightness/3))
#                   end #weekday
#               elseif x[3] == 11 # cloudy
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(4,5)
#                     bestBrightness = DiscreteUniform(1,floor(brightness/3))
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(4,5)
#                     bestBrightness = DiscreteUniform(1,floor(brightness/3))
#                   end #weekday
#               elseif x[3] == 21 # partially sunny
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(4,5)
#                     bestBrightness = DiscreteUniform(1,floor(brightness/3))
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(4,5)
#                     bestBrightness = DiscreteUniform(1,floor(brightness/3))
#                   end #weekday
#               else #x[3] == 31 # sunny # sunny
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(4,5)
#                     bestBrightness = DiscreteUniform(1,floor(brightness/3))
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(4,5)
#                     bestBrightness = DiscreteUniform(1,floor(brightness/3))
#                   end #weekday
#               end #weather
#           else
#               # WEATHER
#               if x[3] == 1 # rainy
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(4,5)
#                     bestBrightness = DiscreteUniform(1,floor(brightness/3))
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(4,5)
#                     bestBrightness = DiscreteUniform(1,floor(brightness/3))
#                   end #weekday
#               elseif x[3] == 11 # cloudy
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(4,5)
#                     bestBrightness = DiscreteUniform(1,floor(brightness/3))
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(4,5)
#                     bestBrightness = DiscreteUniform(1,floor(brightness/3))
#                   end #weekday
#               elseif x[3] == 21 # partially sunny
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(4,5)
#                     bestBrightness = DiscreteUniform(1,floor(brightness/3))
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(4,5)
#                     bestBrightness = DiscreteUniform(1,floor(brightness/3))
#                   end #weekday
#               else #x[3] == 31 # sunny # sunny
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(4,5)
#                     bestBrightness = DiscreteUniform(1,floor(brightness/3))
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(4,5)
#                     bestBrightness = DiscreteUniform(1,floor(brightness/3))
#                   end #weekday
#               end #weather
#           end #temperature
#
#       elseif 6 < x[1] <= 12 # time: morning     # in the morning no red/pink, not too low brightness
#           # TEMPERATURE
#           if 20 <= x[2] < 40
#               # WEATHER
#               if x[3] == 1 # rainy
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(2,5)
#                     bestBrightness = DiscreteUniform(floor(brightness/2), brightness) #since it is rainy a bit more brightness
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(2,5)
#                     bestBrightness = DiscreteUniform(floor(brightness/2), brightness) #since it is rainy a bit more brightness
#                   end #weekday
#               elseif x[3] == 11 # cloudy
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(2,5)
#                     bestBrightness = DiscreteUniform(floor(brightness/2), brightness) #since it is cloudy a bit more brightness
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(2,5)
#                     bestBrightness = DiscreteUniform(floor(brightness/2), brightness) #since it is rainy a bit more brightness
#                   end #weekday
#               elseif x[3] == 21 # partially sunny
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(2,5)
#                     bestBrightness = DiscreteUniform(floor(brightness/4), brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(2,5)
#                     bestBrightness = DiscreteUniform(floor(brightness/4), brightness)
#                   end #weekday
#               else #x[3] == 31 # sunny # sunny
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(2,5)
#                     bestBrightness = DiscreteUniform(floor(brightness/4), brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(2,5)
#                     bestBrightness = DiscreteUniform(floor(brightness/4), brightness)
#                   end #weekday
#               end #weather
#           elseif  40 <= x[2] < 60
#               # WEATHER
#               if x[3] == 1 # rainy
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(2,5)
#                     bestBrightness = DiscreteUniform(floor(brightness/2), brightness) #since it is rainy a bit more brightness
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(2,5)
#                     bestBrightness = DiscreteUniform(floor(brightness/2), brightness) #since it is rainy a bit more brightness
#                   end #weekday
#               elseif x[3] == 11 # cloudy
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(2,5)
#                     bestBrightness = DiscreteUniform(floor(brightness/2), brightness) #since it is cloudy a bit more brightness
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(2,5)
#                     bestBrightness = DiscreteUniform(floor(brightness/2), brightness) #since it is cloudy a bit more brightness
#                   end #weekday
#               elseif x[3] == 21 # partially sunny
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(2,5)
#                     bestBrightness = DiscreteUniform(floor(brightness/4), brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(2,5)
#                     bestBrightness = DiscreteUniform(floor(brightness/4), brightness)
#                   end #weekday
#               else #x[3] == 31 # sunny # sunny
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(2,5)
#                     bestBrightness = DiscreteUniform(floor(brightness/4), brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(2,5)
#                     bestBrightness = DiscreteUniform(floor(brightness/4), brightness)
#                   end #weekday
#               end #weather
#           elseif  60 <= x[2] < 80
#               # WEATHER
#               if x[3] == 1 # rainy
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(2,5)
#                     bestBrightness = DiscreteUniform(floor(brightness/2), brightness) #since it is rainy a bit more brightness
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(2,5)
#                     bestBrightness = DiscreteUniform(floor(brightness/2), brightness) #since it is rainy a bit more brightness
#                   end #weekday
#               elseif x[3] == 11 # cloudy
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(2,5)
#                     bestBrightness = DiscreteUniform(floor(brightness/2), brightness) #since it is cloudy a bit more brightness
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(2,5)
#                     bestBrightness = DiscreteUniform(floor(brightness/2), brightness) #since it is cloudy a bit more brightness
#                   end #weekday
#               elseif x[3] == 21 # partially sunny
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(2,5)
#                     bestBrightness = DiscreteUniform(floor(brightness/4), brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(2,5)
#                     bestBrightness = DiscreteUniform(floor(brightness/4), brightness)
#                   end #weekday
#               else #x[3] == 31 # sunny # sunny
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(2,5)
#                     bestBrightness = DiscreteUniform(floor(brightness/4), brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(2,5)
#                     bestBrightness = DiscreteUniform(floor(brightness/4), brightness)
#                   end #weekday
#               end #weather
#           else
#               # WEATHER
#               if x[3] == 1 # rainy
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(2,5)
#                     bestBrightness = DiscreteUniform(floor(brightness/2), brightness) #since it is rainy a bit more brightness
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(2,5)
#                     bestBrightness = DiscreteUniform(floor(brightness/2), brightness) #since it is rainy a bit more brightness
#                   end #weekday
#               elseif x[3] == 11 # cloudy
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(2,5)
#                     bestBrightness = DiscreteUniform(floor(brightness/2), brightness) #since it is cloudy a bit more brightness
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(2,5)
#                     bestBrightness = DiscreteUniform(floor(brightness/2), brightness) #since it is cloudy a bit more brightness
#                   end #weekday
#               elseif x[3] == 21 # partially sunny
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(2,5)
#                     bestBrightness = DiscreteUniform(floor(brightness/4), brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(2,5)
#                     bestBrightness = DiscreteUniform(floor(brightness/4), brightness)
#                   end #weekday
#               else #x[3] == 31 # sunny # sunny
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(2,5)
#                     bestBrightness = DiscreteUniform(floor(brightness/4), brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(2,5)
#                     bestBrightness = DiscreteUniform(floor(brightness/4), brightness)
#                   end #weekday
#               end #weather
#           end #temperature
#
#       elseif 12 < x[1] <= 18 # time: afternoon
#           # TEMPERATURE
#           if 20 <= x[2] < 40
#               # WEATHER
#               if x[3] == 1 # rainy
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(floor(brightness/5), brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(floor(brightness/5), brightness)
#                   end #weekday
#               elseif x[3] == 11 # cloudy
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(floor(brightness/5), brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(floor(brightness/5), brightness)
#                   end #weekday
#               elseif x[3] == 21 # partially sunny
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(floor(brightness/5), brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(floor(brightness/5), brightness)
#                   end #weekday
#               else #x[3] == 31 # sunny # sunny
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(floor(brightness/5), brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(floor(brightness/5), brightness)
#                   end #weekday
#               end #weather
#           elseif  40 <= x[2] < 60
#               # WEATHER
#               if x[3] == 1 # rainy
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(floor(brightness/5), brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(floor(brightness/5), brightness)
#                   end #weekday
#               elseif x[3] == 11 # cloudy
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(floor(brightness/5), brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(floor(brightness/5), brightness)
#                   end #weekday
#               elseif x[3] == 21 # partially sunny
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(floor(brightness/5), brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(floor(brightness/5), brightness)
#                   end #weekday
#               else #x[3] == 31 # sunny # sunny
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(floor(brightness/5), brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(floor(brightness/5), brightness)
#                   end #weekday
#               end #weather
#           elseif  60 <= x[2] < 80
#               # WEATHER
#               if x[3] == 1 # rainy
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(floor(brightness/5), brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(floor(brightness/5), brightness)
#                   end #weekday
#               elseif x[3] == 11 # cloudy
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(floor(brightness/5), brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(floor(brightness/5), brightness)
#                   end #weekday
#               elseif x[3] == 21 # partially sunny
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(floor(brightness/5), brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(floor(brightness/5), brightness)
#                   end #weekday
#               else #x[3] == 31 # sunny # sunny
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(floor(brightness/5), brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(floor(brightness/5), brightness)
#                   end #weekday
#               end #weather
#           else
#               # WEATHER
#               if x[3] == 1 # rainy
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(floor(brightness/5), brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(floor(brightness/5), brightness)
#                   end #weekday
#               elseif x[3] == 11 # cloudy
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(floor(brightness/5), brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(floor(brightness/5), brightness)
#                   end #weekday
#               elseif x[3] == 21 # partially sunny
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(floor(brightness/5), brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(floor(brightness/5), brightness)
#                   end #weekday
#               else #x[3] == 31 # sunny # sunny
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(floor(brightness/5), brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(floor(brightness/5), brightness)
#                   end #weekday
#               end #weather
#           end #temperature
#
#       else # 18< x[1] <22 # time: evening   # evening all is possible
#           # TEMPERATURE
#           if 20 <= x[2] < 40
#               # WEATHER
#               if x[3] == 1 # rainy
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(1, brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(1, brightness)
#                   end #weekday
#               elseif x[3] == 11 # cloudy
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(1, brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(1, brightness)
#                   end #weekday
#               elseif x[3] == 21 # partially sunny
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(1, brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(1, brightness)
#                   end #weekday
#               else #x[3] == 31 # sunny # sunny
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(1, brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(1, brightness)
#                   end #weekday
#               end #weather
#           elseif  40 <= x[2] < 60
#               # WEATHER
#               if x[3] == 1 # rainy
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(1, brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(1, brightness)
#                   end #weekday
#               elseif x[3] == 11 # cloudy
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(1, brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(1, brightness)
#                   end #weekday
#               elseif x[3] == 21 # partially sunny
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(1, brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(1, brightness)
#                   end #weekday
#               else #x[3] == 31 # sunny # sunny
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(1, brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(1, brightness)
#                   end #weekday
#               end #weather
#           elseif  60 <= x[2] < 80
#               # WEATHER
#               if x[3] == 1 # rainy
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(1, brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(1, brightness)
#                   end #weekday
#               elseif x[3] == 11 # cloudy
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(1, brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(1, brightness)
#                   end #weekday
#               elseif x[3] == 21 # partially sunny
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(1, brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(1, brightness)
#                   end #weekday
#               else #x[3] == 31 # sunny # sunny
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(1, brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(1, brightness)
#                   end #weekday
#               end #weather
#           else
#               # WEATHER
#               if x[3] == 1 # rainy
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(1, brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(1, brightness)
#                   end #weekday
#               elseif x[3] == 11 # cloudy
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(1, brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(1, brightness)
#                   end #weekday
#               elseif x[3] == 21 # partially sunny
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(1, brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(1, brightness)
#                   end #weekday
#               else #x[3] == 31 # sunny # sunny
#                   # WEEKDAY
#                   if 1 <= x[4] <= 4 # weekdays
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(1, brightness)
#                   else # x[4] > 4 # weekend
#                     bestColor = DiscreteUniform(1,colors)
#                     bestBrightness = DiscreteUniform(1, brightness)
#                   end #weekday
#               end #weather
#           end #temperature
#       end # time
#
#
#
#       BestColor=rand(bestColor)
#       BestBrightness=rand(bestBrightness)
#       return (BestColor, BestBrightness)
# end
