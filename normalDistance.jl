#-------------------------------------------------------------------------------
#  DESCRIPTION: finds distance given by the Normal kernel (μ and x can be vectors)
# σ is given (to study which is better)
#-------------------------------------------------------------------------------

function normalDistance(μ, x)
  σ = 35
  return exp( - (norm(μ-x))^2/(σ^2)   )
end

function normalDistance2(μ, x)
  σ = 1
  return exp( - (norm(μ-x))^2/(σ^2)   )
end

function normalDistance3(μ, x)
  σ = 15
  return exp( - (norm(μ-x))^2/(σ^2)   )
end

#-------------------------------------------------------------------------------
