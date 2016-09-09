#-------------------------------------------------------------------------------
#  DESCRIPTION: it determines the reward
#-------------------------------------------------------------------------------
#  INPUTS : C color played,
#           B brightness played
#           bestColor best color at time t
#           bestBrightness best brightness at time t
#  OUTPUT : reward obtained
#-------------------------------------------------------------------------------

function getReward(C,B,bestColor,bestBrightness)

rewardColor = 0
rewardBrightness = 0

# if the color is right you get 1, otherwise 0 (we can make this finer)
if C == bestColor
  rewardColor = 1
else
  rewardColor = 0
end

rewardBrightness = normalDistance2(B,bestBrightness)

return (rewardColor , rewardBrightness)



end
