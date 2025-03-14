pragma solidity ^0.8.0;
contract MutateArray_2 {
    function test() public {
        for(uint i = 0; i < 10; i++) {
            array.push(uint(i));
        }
    }
}
