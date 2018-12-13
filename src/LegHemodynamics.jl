module LegHemodynamics

importall NumericalIntegration
importall MAT
importall Dierckx
importall CSV
importall Missings

# conversion factors and solver parameters
include("conversions.jl")
include("solverparams.jl")

# file loader
include("loadtexttree.jl")

# timer
include("buildtimer.jl")

# type definitions
include("buildbranches.jl")
include("buildall.jl")

# initialization/discretization
include("calcbranchprops.jl")
include("discretizebranches.jl")
# include("discretizeperiphery.jl")

# blood volume tracker
# include("updatevolumes.jl")

# TVD RK3 + WENO3 for artery interiors
include("tvdrk3.jl")
include("invariants.jl")
include("invariantodes.jl")
include("weno3.jl")
include("smoothinds.jl")
include("weights.jl")
include("reconstruct.jl")
include("F1d.jl")
include("J1d.jl")
include("abseigs.jl")

# 0D-1D coupling and 0D updates
include("coupling.jl")
include("interiorbcs.jl")
include("coupledistal.jl")
include("coupleproximal.jl")

# 1D interior junction updates
include("solvesplits.jl")
include("newton.jl")
include("fsingle.jl")
include("fdouble.jl")
include("ftriple.jl")
include("Jsingle.jl")
include("Jdouble.jl")
include("Jtriple.jl")

# 1D pressure updates
include("arterialpressure.jl")

# main
include("main.jl")

end
