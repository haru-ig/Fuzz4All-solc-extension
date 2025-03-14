pragma solidity ^0.8.0;
contract MutateArray {
    uint256 private constant MAX = uint256(-1) ^ 0xffffffff;
    uint256[] public array;
    function test() public {
        for(uint256 i = 0; i < array.length; i++) {
            uint256 result = array[i];
            array[i] = result + 1;
        }
    }
}
