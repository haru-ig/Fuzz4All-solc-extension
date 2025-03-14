pragma solidity ^0.8.0;
contract MutateArray2 {
    uint[] public array;
    function test() public {
        array.push(1, 2);
    }
}
