pragma solidity ^0.8.0;
contract ArrayMutatedExample {
    uint256 length = 0;
    uint16[] public array;
    function test() public {
        uint x = 5;
        uint array_length = array.length;
        uint array_pointer = 0;
        uint256 x_to_pointer = 0;
        uint256 x_to_pointer_length = 0;
        uint256 x_to_pointer_value = array[x];
        uint256 pointer_length = array.length;
        uint256 x_to_pointer_value_changed = array[x] = 8;
    }
}
