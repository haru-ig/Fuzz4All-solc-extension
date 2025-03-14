pragma solidity ^0.8.0;
contract ArrayExample {
    uint256 length = 10;
    uint256[] public array = [1,  100,  64, 8126, 9999999999999999999, 999999999999999999];
    function test() public {
        uint x = 5;
        array[x] = 9999999999999999999;
        uint y = 0;
        uint z = 1;
        while (z < length) {
            y += array[z];
            z++;
        }
        array[0] = 0;
    }
}
