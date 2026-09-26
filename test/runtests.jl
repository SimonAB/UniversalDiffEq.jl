using UniversalDiffEq
using Test

@testset "Lotka-Volterra data generation" begin
    data = LotkaVolterra(plot = false, seed = 123, datasize = 5, T = 0.1, sigma = 0)

    @test size(data, 1) == 5
    @test propertynames(data) == [:time, :x1, :x2]
    @test first(data.time) == 0
    @test last(data.time) ≈ 0.1
    @test all(isfinite, data.x1)
    @test all(isfinite, data.x2)
end

@testset "UniversalDiffEq.jl" begin 
    include("UDETests.jl")
    include("NODEtests.jl")
    include("MultiUDE.jl")
    include("cross_validation.jl")
    # include("BayesNODEtests.jl")
    # include("EasyNODEtests.jl")
end
