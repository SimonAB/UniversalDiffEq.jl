using Documenter, UniversalDiffEq, DataFrames, Plots

const UniversalDiffEqPlots = Base.get_extension(UniversalDiffEq, :UniversalDiffEqPlots)

makedocs(
    sitename="UniversalDiffEq.jl",
    modules  = [UniversalDiffEq, UniversalDiffEqPlots],
    format   = Documenter.HTML(; prettyurls = get(ENV, "CI", nothing) == "true"),
    pages = ["index.md","Models.md","TrainingRoutines.md","ModelTesting.md","CrossValidation.md","NutsAndBolts.md","MultipleTimeSeries.md","modelanalysis.md","examples.md","API.md"]
)

deploydocs(
    repo = "github.com/SimonAB/UniversalDiffEq.jl.git",
)

