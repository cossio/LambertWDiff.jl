using ForwardDiff, LambertW

@testset "derivative of lambertw" begin
    @test ForwardDiff.derivative(lambertw, 0) ≈ 1
    @test ForwardDiff.derivative(lambertw, 1) ≈ 0.361896256634889221477592614480119685556
    @test ForwardDiff.derivative(lambertw, 2) ≈ 0.230109837492917245524832192843797742125
    @test ForwardDiff.derivative(lambertw, 10) ≈ 0.0635771334693451051420213110107808876419
end
