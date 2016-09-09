# To precompile in order to include all functions
# include("/Users/Stefano/Dropbox (MIT)/JULIA/MAB_Julia/precompile.jl")

#-------------------------------------------------------------------------------
# PACKAGES
#-------------------------------------------------------------------------------
using Distributions # for probability
using Gadfly        # for plots

#-------------------------------------------------------------------------------
# FUNCTIONS
#-------------------------------------------------------------------------------
include("/Users/Stefano/Dropbox (MIT)/JULIA/MAB_Julia/RealContexts/createPersonality.jl")

include("/Users/Stefano/Dropbox (MIT)/JULIA/MAB_Julia/RealContexts/getBestColorIndex.jl")
include("/Users/Stefano/Dropbox (MIT)/JULIA/MAB_Julia/RealContexts/getBestBrightnessIndex.jl")

include("/Users/Stefano/Dropbox (MIT)/JULIA/MAB_Julia/RealContexts/getProbabilityOfExploration.jl")
include("/Users/Stefano/Dropbox (MIT)/JULIA/MAB_Julia/RealContexts/getReward.jl")

include("/Users/Stefano/Dropbox (MIT)/JULIA/MAB_Julia/RealContexts/NewProbabilities.jl")
include("/Users/Stefano/Dropbox (MIT)/JULIA/MAB_Julia/RealContexts/normalDistance.jl")

include("/Users/Stefano/Dropbox (MIT)/JULIA/MAB_Julia/RealContexts/getContext.jl")
include("/Users/Stefano/Dropbox (MIT)/JULIA/MAB_Julia/RealContexts/PlayCMAB.jl")
include("/Users/Stefano/Dropbox (MIT)/JULIA/MAB_Julia/RealContexts/MainCMAB.jl")


#-------------------------------------------------------------------------------

#-- change directory
# cd("/Users/Stefano/Dropbox (MIT)/JULIA/MAB_Julia/RealContexts/")
