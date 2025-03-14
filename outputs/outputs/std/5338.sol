pragma solidity ^0.8.0;
contract ArrayExample {
    uint256 length = 10;
    uint[] public array;
    function test() public {
        uint index = 5;
        uint value = array[index];
        array[index] = value < array[5];
        index = length;
        while (index!= array[2]) {
            array[index] = 0;
            index--;
        }
        array[7] = length;
    }
}
