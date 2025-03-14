pragma solidity ^0.8.0;
contract MutateArray {
    uint[] public array;
    function test() public {
        array.push(1);
    }
}
