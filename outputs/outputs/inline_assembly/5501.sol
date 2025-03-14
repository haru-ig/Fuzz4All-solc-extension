pragma solidity ^0.8.0;
contract MutableBc5 {
    uint private variableA = 10;
    function test() public {
       assembly {
           variableA := 1
       }
    }
}
