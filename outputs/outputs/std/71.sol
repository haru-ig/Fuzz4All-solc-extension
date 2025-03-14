pragma solidity ^0.8.0;
contract ModifyProgram {
    function _add_uint_uint(uint x, uint y) private returns (uint) {
        uint x2 = x * 5;
        return x + x2 + y;
    }

    uint[] arr;

    constructor() public {
        arr = [10, 20, 30, 40];
    }
    function modify_sum_array() private {
        uint i;
        uint sum;
        uint min;
        uint max;
        for (i = 0; i < arr.length; i++) {
            sum = 0;
            for (uint j = 0; j < arr.length; j++) {

                sum = arr[j] + sum;
                min = min(arr[j], j);
                max = max(arr[j], j);
            }

            arr[i] = _sum_uint_uint(sum, i);
            if (i == 0 || min!= arr[i])
                Console.print("min and max: ", min, " ", max);
        }
    }
}
