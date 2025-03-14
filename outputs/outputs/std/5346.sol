pragma solidity ^0.8.0;
contract ArrayExample {
    uint256 length = 10;
    uint256[] public array = [1,  100,  64, 8126, 999999999999999999, 999999999999999999];
    function test() public {
        uint256 x = 0;
        uint256 x_to_pointer = array[x];
        uint x_old_value = x_to_pointer;
        uint256 y = 0;
        uint z = 1;
        uint256 length_value = length;
        while (z < length) {
            x = ((x*2) - 1) + z;
            x_to_pointer = array[x];
            y += array[x_to_pointer];
            z++;
        }
        uint256 y_to_pointer = array[x];
        array[x] = array[x_to_pointer];
        array[x_to_pointer] = array[x_old_value];
        array[x_old_value] = y;
        array[y] = y_to_pointer;
    }
}
