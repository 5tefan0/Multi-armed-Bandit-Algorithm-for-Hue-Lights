#-------------------------------------------------------------------------------
#  DESCRIPTION: finds the current probability of exploration
#-------------------------------------------------------------------------------
# INPUTS : current time t,
#          vector x of all contexts (being x[t] the current context),
#          constant c to determine
#          probability array p of observing x
#          kernel function (now we use normal kernel)
#-------------------------------------------------------------------------------

function getProbabilityOfExploration(t::Int64, x::Array, kernelFunction::Function)

    SUM = 0
    for i = 1 :  (t-1)
       # compute kernels and sum them up
       addend=[]
       addend = kernelFunction(x[t],x[i])
       SUM = SUM + addend
    end

if SUM ==0 return 1
else
    #return min( 60*(p[x[t]]) / SUM  ,1)
    return min( 60  / (SUM)^1.3 ,1)
end

end
