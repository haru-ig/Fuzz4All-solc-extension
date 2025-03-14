pragma solidity ^0.8.0;
contract ArrayExample {
    uint256 length = 10;
    uint256[] public array = [1,  100,  64, 8126, 999999999999999999, 99999999999999999];
    function test() public {
        uint x = 5;
        uint256 x_to_pointer = array[x];
        uint y = 0;
        uint z = 1;
        while (z < length) {
            y += array[z];
            z++;
        }
        y += array[0];
    }
}
