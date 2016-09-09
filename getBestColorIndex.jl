#-------------------------------------------------------------------------------
#  DESCRIPTION: finds the arm to play
#-------------------------------------------------------------------------------
# INPUTS : current time t,
#          number of arms m,
#          vector x of all contexts (being x[t] the current context),
#          array of all the past arms played,
#          array of all past rewards,
#          kernel function (now we use normal kernel)
#-------------------------------------------------------------------------------
function getBestColorIndex(t::Int64, m::Int64, x::Array, decisions::Array, rewards::Array, kernelFunction::Function)
 # Initialize vector of values that will deterine the best arm
 F=Float64[]

 # Initialize fraction
 SUM_numerator=zeros(m)
 SUM_denominator=zeros(m)
 # Loop over all arms
  for j = 1 : m
     # Loop over all previous times

     for i = 1 : (t-1)
        if decisions[i]==j
             addend_numerator=[]
             addend_denominator=[]

             addend_numerator = rewards[i]*kernelFunction(x[t],x[i])
             addend_denominator = kernelFunction(x[t],x[i])
             SUM_numerator[j] = SUM_numerator[j] + addend_numerator
             SUM_denominator[j] = SUM_denominator[j] + addend_denominator
        else

        end
     end

            if SUM_denominator[j]==0
               toPush= 0
             else
               toPush = SUM_numerator[j]/SUM_denominator[j]
            end

     push!(F, toPush)
#     println("size of F is $length(F)")
  end

  return  indmax(F)

end#function

function getBestColorIndexUCB(t::Int64, m::Int64, counter::Array, x::Array, decisions::Array, rewards::Array, kernelFunction::Function)
 # Initialize vector of values that will deterine the best arm
 F=Float64[]

 kernelSum = 1.5
 for i =1:(t-1)
    kernelSum += kernelFunction(x[t],x[i])
 end

 println("\n KernelSum at time $t: $kernelSum \n")

 # Initialize fraction
 SUM_numerator=zeros(m)
 SUM_denominator=zeros(m)
 # Loop over all arms
  for j = 1 : m
     # Loop over all previous times

     for i = 1 : (t-1)
        if decisions[i]==j

SUM_numerator[j] += rewards[i]

        else

        end#if
     end#for

     toPush = SUM_numerator[j]/counter[j] + sqrt(2*log(t)/counter[j])


     push!(F, toPush)
#     println("size of F is $length(F)")
  end

  return  indmax(F)

end#function
