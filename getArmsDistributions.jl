#-------------------------------------------------------------------------------
#  DESCRIPTION:
#-------------------------------------------------------------------------------
# INPUTS : number of arms m,
#          range [a,b] of contexts,
#          current time t,
#          vector x of all contexts (being x[t] the current context)
#-------------------------------------------------------------------------------

function getArmsDistributions(m::Int64, a, b, t::Int64, x::Array)

      range = b-a

      armsDist = Distribution[]

      if x[t] >= 0.75*range
        for j=1:m-1
          push!(armsDist, Bernoulli(0))
          #  push!(armsDist, Bernoulli((b-a)/(2*j)/b))
        end
        push!(armsDist, Bernoulli(0.99))
      elseif (x[t] >= 0.5*range && x[t] < 0.75*range)
        for j=1:m
          push!(armsDist, Bernoulli(0))
          #  push!(armsDist, Bernoulli((b-a)/(2*j)/b))
        end
        armsDist[m-1] = Bernoulli(0.99)
      elseif (x[t] >= 0.25*range && x[t] < 0.5*range)
        for j=1:m
          push!(armsDist, Bernoulli(0))
          #  push!(armsDist, Bernoulli((b-a)/(2*j)/b))
        end
        armsDist[m-2] = Bernoulli(0.99)
      else
        for j=1:m
          push!(armsDist, Bernoulli(0))
          #  push!(armsDist, Bernoulli((b-a)/(2*j)/b))
        end
        armsDist[m-3] = Bernoulli(0.99)
      end

      return armsDist
end

# maybe the context could depend on all the past history ?
