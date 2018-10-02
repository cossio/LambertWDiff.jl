using ForwardDiff, LambertW

@test ForwardDiff.derivative(lambertw, 0) ≈ 1
@test ForwardDiff.derivative(lambertw, 1) ≈ 0.361896256634889221477592614480119685556
@test ForwardDiff.derivative(lambertw, 2) ≈ 0.230109837492917245524832192843797742125
