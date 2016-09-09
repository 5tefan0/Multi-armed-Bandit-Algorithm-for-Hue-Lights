
#-------------------------------------------------------------------------------
# DESCRIPTION
#-------------------------------------------------------------------------------
# Solves 1 istance of the contextual bandit problem (discrete space of contexts)

function PlayCMAB(n::Int64)

#-------------------------------------------------------------------------------
# INPUTS:
#         m number of arms
#         n number of rounds
#-------------------------------------------------------------------------------

colors=6

brightness=14

# initialize the vector of contexts
x = Vector[]  # Note that by specifying the type of x we can use the push! function later
              # now, we have discrete contexts, x[t] is (the index of) the context appeared

# Let's store all the probabilities of exploration in a vector
ɛ = Float64[]

# Let's store all the rewards in a vector
RewardsColors = Float64[]
RewardsBrightness = Float64[]

# Let's store all the decisions taken (arms indeces) of exploration in a vector
ColorsHistory = Float64[]
BrightnessHistory = Float64[]

counterColors = ones(6)
counterBrightness = ones(14)

#-------------------------------------------------------------------------------
# GAME
#-------------------------------------------------------------------------------

for t = 1 : n

  println("\n \n Turn $t starts: \n")


# The context x[t] is shown:
  push!(x,getContext(t))

# define probability of exploration ɛ (see function) and store it
  push!(ɛ, getProbabilityOfExploration(t, x, normalDistance ))
  println("\n The probability of exploration ɛ(t) is $(ɛ[t]) \n")

# Binomial with prob epsilon
 ExploreOrExploit = rand(Bernoulli(ɛ[t]))
# println("ExploreOrExploit is $ExploreOrExploit \n")
#C = getBestColorIndexUCB(t, colors, counterColors, x, ColorsHistory, RewardsColors, normalDistance3)
#  push!(ColorsHistory, C)
#  counterColors[C]+=1

      if ExploreOrExploit == 0
        # decide what color and brightness to play
        println("I'm exploiting (probability 1 -$(ɛ[t])) \n")
       C = getBestColorIndex(t, colors, x, ColorsHistory, RewardsColors, normalDistance2)
      push!(ColorsHistory, C)

         B = getBestBrightnessIndex(t, brightness, x, BrightnessHistory, RewardsBrightness, normalDistance2)
         push!(BrightnessHistory, B)

      else
        # draw color and brightness at random (this should be improved to eliminate very bad arms)
        println("I'm exploring (probability $(ɛ[t])) \n")
        C = rand(DiscreteUniform(1,colors))
       push!(ColorsHistory, C)
  #      counterColors[C]+=1

        B = rand(DiscreteUniform(1,brightness))
        push!(BrightnessHistory, B)
      end

# Behavior of the arms: I made it up just to simulate
(bestColor,bestBrightness)=createPersonality(colors,brightness,x[t])

# Pull the arm and get reward
   (currentRewardColor,currentRewardBrightness) = getReward(C,B,bestColor,bestBrightness)


   push!(RewardsColors,currentRewardColor)
   push!(RewardsBrightness,currentRewardBrightness)

   #println("\n Current context is $(x[t]) \n")
   println("\n For the color, the reward obtained is $currentRewardColor \n")
   println("\n For the brightness, the reward obtained is $currentRewardBrightness \n")

   println("\n Current color played is $C, while the best color is $bestColor \n" )
   println("\n Current brightness played is $B, while the best brightness is $bestBrightness \n" )



end #loop over n rounds

println("\n\n\n\n The total reward for the colors is $(sum(RewardsColors)) \n")
println("\n\n\n\n The total reward for the bestBrightness is $(sum(RewardsBrightness)) ")


#
#-------------------------------------------------------------------------------
# PICTURES
#-------------------------------------------------------------------------------
p=plot(x=collect(1:n), y=ɛ, Geom.point , Geom.smooth)
g1=plot(x=collect(1:n), y=RewardsColors, Geom.point , Geom.smooth)
g2=plot(x=collect(1:n), y=RewardsBrightness, Geom.point , Geom.smooth)
#h=plot(x=collect(1:n), y=x, Geom.point , Geom.smooth)
t1=plot(x=collect(1:n), y=ColorsHistory, Geom.point , Geom.smooth)
t2=plot(x=collect(1:n), y=BrightnessHistory, Geom.point , Geom.smooth)

clocksAppeared=zeros(n)
temperaturesAppeared=zeros(n)
weatherAppeared=zeros(n)
daysAppeared=zeros(n)

for i=1:n
  clocksAppeared[i] = x[i][1]
  temperaturesAppeared[i]= x[i][2]
  weatherAppeared[i]= x[i][3]
  daysAppeared[i]= x[i][4]
end

#plots of the contexts
c1=plot(x=collect(1:n), y=clocksAppeared, Geom.point , Geom.smooth)
c2=plot(x=collect(1:n), y=temperaturesAppeared, Geom.point , Geom.smooth)
c3=plot(x=collect(1:n), y=weatherAppeared, Geom.point , Geom.smooth)
c4=plot(x=collect(1:n), y=daysAppeared, Geom.point , Geom.smooth)



# example: draw(SVG("output.svg", 6inch, 3inch), plot([sin, cos], 0, 25))
draw(SVG("Philips_epsilon.svg", 15inch, 15inch), p)
draw(SVG("Philips_RewardsColors.svg", 15inch, 15inch), g1)
draw(SVG("Philips_RewardsBrightness.svg", 15inch, 15inch), g2)
#draw(SVG("Contexts.svg", 15inch, 15inch), h)
draw(SVG("Philips_ColorsHistory.svg", 15inch, 15inch), t1)
draw(SVG("Philips_BrightnessHistory.svg", 15inch, 15inch), t2)

#draw contexts appeared
draw(SVG("Philips_ClocksAppeared.svg", 15inch, 15inch), c1)
draw(SVG("Philips_temperaturesAppeared.svg", 15inch, 15inch), c2)
draw(SVG("Philips_weatherAppeared.svg", 15inch, 15inch), c3)
draw(SVG("Philips_daysAppeared.svg", 15inch, 15inch), c2)


# pictures are saved in the user folder


#-------------------------------------------------------------------------------
# # what to return
# return sum(Rewards)

end #function
