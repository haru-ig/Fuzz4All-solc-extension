pragma solidity ^0.8.0;
contract MutateArrayExample {
    uint256 length = 0;
    uint[] public array;
    function test() public {
        uint x = 0;
        array[x] = 5;
        uint array_length = array.length;
        uint array_pointer = 0;
        uint256 x_to_pointer = 0;
        uint256 x_to_pointer_length = 0;
        uint256 x_to_pointer_value = array[x];
        uint256 x_to_pointer_value_copy = x * 10;
        uint256 x_to_pointer_value_set = 9 / 10;
    }
}
