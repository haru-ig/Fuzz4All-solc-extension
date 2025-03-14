pragma solidity ^0.8.0;
contract ArrayExample {
    uint[] public array = [1];
    function test() public {
        uint x = 5;
        uint256 x_to_pointer = array[x];
    }
    function addTest() public {
        array[5] += 10;
    }
}
