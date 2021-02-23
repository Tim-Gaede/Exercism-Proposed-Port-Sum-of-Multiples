function sum_of_multiples(limit::Int, multiples::Array{Int,1})
# For every number up to the limit, see if it is a
# multiple of at least one of the array numbers.
# There is no need to see if the number under the limit
# is a multiple of another array number as we
# must count the number under the limit only once.
    ∑ = 0
    n_lim = limit - 1
    for n = 1 : n_lim
        multiple_found = false
        i = 1
        while !multiple_found  &&  i ≤ length(multiples)
            if multiples[i] > 0  &&  n % multiples[i] == 0
                multiple_found = true
                ∑ += n
            else
                i += 1
            end
        end
    end

    ∑ # returned
end
