pragma solidity ^0.8.0;
contract MutateArray {
    uint[] memory array;
    function test() public {
        array.push(0);
    }
}
