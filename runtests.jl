#=
You can make the following assumptions about the inputs to the
'sum_of_multiples' function:
    * All input numbers are non-negative 'int's, i.e. natural numbers
      including zero.
    * A list of factors must be given, and its elements are unique
      and sorted in ascending order.
=#

using Test

include("sum_of_multiples.jl")


# Tests adapted from `problem-specifications//canonical-data.json` @ v1.5.0

println("\n"^2, "-"^60, "\n"^3)

@testset "Multiples with no factors in limit." begin
    @test sum_of_multiples(1, [3, 5]) == 0
end
println()

@testset "Multiples of one factor within limit." begin
    @test sum_of_multiples(4, [3, 5]) == 3
end
println()

@testset "Various multiples in limit." begin
    @test sum_of_multiples(7, [3]) == 9
end
println()

@testset "Various factors with multiples in limit." begin
    @test sum_of_multiples(10, [3, 5]) == 23
end
println()

@testset "Multiples counted only once." begin
    @test sum_of_multiples(100, [3, 5]) == 2_318
end
println()

@testset "Multiples with large limit." begin
    @test sum_of_multiples(1_000, [3, 5]) == 233_168
end
println()

@testset "Multiples with three factors." begin
    @test sum_of_multiples(20, [7, 13, 17]) == 51
end
println()

@testset "Multiples with factors not prime." begin
    @test sum_of_multiples(15, [4, 6]) == 30
end
println()

@testset "Multiples with factors prime and not." begin
    @test sum_of_multiples(150, [5, 6, 8]) == 4_419
end
println()

@testset "Multiples with similar factors." begin
    @test sum_of_multiples(51, [5, 25]) == 275
end
println()

@testset "Multiples with large factors." begin
    @test sum_of_multiples(10_000, [43, 47]) == 2_203_160
end
println()

@testset "Multiples of one will be all." begin
    @test sum_of_multiples(100, [1]) == 4_950
end
println()

@testset "Multiples of an empty list." begin
    @test sum_of_multiples(10_000, []) == 0
end
println()

@testset "Multiples of zero will be none." begin
    @test sum_of_multiples(1, [0]) == 0
end
println()

@testset "Multiples with a zero factor." begin
    @test sum_of_multiples(4, [0, 3]) == 3
end
println()

@testset "Multiples of several factors." begin
    @test sum_of_multiples(10_000, [2, 3, 5, 7, 11]) == 39_614_537
end
