pragma solidity ^0.8.0;
contract MutatedGeneration1 {
    function f() public returns (uint){
        return 5;
    }
}

event ArrayChanged(uint256[] array);
