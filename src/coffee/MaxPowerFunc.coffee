
Math.MaxPowerFunc = (A,B) ->
    result = Math.MaxPowerAlgorithm 10, A, B

    result.max



class MaxPowerResult 
    
    constructor: (value, max) ->
        @value = value
        @max = max


Math.MaxPowerAlgorithm = (N, A, B) ->
    return new MaxPowerResult(1,1) if N is 0

    result = Math.MaxPowerAlgorithm N-1, A, B

    result.value = (A * result.value) % B

    result.max = Math.max result.value, result.max

    result

