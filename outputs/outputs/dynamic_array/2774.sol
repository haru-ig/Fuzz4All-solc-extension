pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations36_Mod {
    uint public x;
    uint[244] x_arr;
    uint public y;
    constructor() public {
        x_arr = _test_set_ext(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
        y = _test_set_ext(1278, 1278, 1278, 1278, 1278, 1278, 1278, y, 1278, 1278, 1278);
    }
    function _test_set_ext(uint in_value) private returns (uint x_arr_set, uint y_uint) {
        x = in_value;
        x_arr[4] = in_value;
        x_arr[165] = in_value;
        x_arr_set = in_value;
        y_uint = in_value;
        return (x_arr_set, y_uint);
    }
}
