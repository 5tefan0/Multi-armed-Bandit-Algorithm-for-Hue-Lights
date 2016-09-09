#-------------------------------------------------------------------------------
# DESCRIPTION: updates the probabilities for each context
#-------------------------------------------------------------------------------
# inspired from http://maths.dur.ac.uk/stats/courses/bayesstats/multinom.pdf
#-------------------------------------------------------------------------------
# INPUTS : probability array p of observing x
#          context that appeared
#          strength of prior belief
#-------------------------------------------------------------------------------


function NewProbabilities!(oldProbabilities::Array, indexAppeared::Int64, priorBelief::Int64)

        for i=1:length(oldProbabilities)
                  if i==indexAppeared
                  oldProbabilities[i]=(priorBelief/(priorBelief+1))*oldProbabilities[i] + 1/(priorBelief+1)
                  else
                  oldProbabilities[i]= (priorBelief/(priorBelief+1))*oldProbabilities[i]
                  end
        end
end
