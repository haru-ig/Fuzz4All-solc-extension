pragma solidity ^0.8.0;
contract ArrayExample {
    uint[] public array;
    function test() public {
        uint x = 5;
        uint array_length = 0;
        uint array_pointer = 0;
        uint256 x_to_pointer = 0;
        uint256 x_to_pointer_length = 0;
        array_length = array.length;

        uint256 x_to_pointer_value = array[x];
    }
}
