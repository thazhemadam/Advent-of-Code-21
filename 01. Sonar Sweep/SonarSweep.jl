using StaticArrays

get_input() = @SVector [parse(Int64, i) for i in readlines("input.txt")]

const input = get_input()
part1(input::SVector{N, T}) where {N, T <: Int64} = count(x -> x > 0, diff(input))

function part2(input::SVector{N, T}) where {N, T <: Int64}
    count(input[i + 3] > input[i] for i in 1:(length(input) - 3))
end
