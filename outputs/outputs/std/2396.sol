pragma solidity ^0.8.0;
contract MutatedEquivalent5 {
    function f() public {
        uint8 arr[1] = [0xFF];
        return arr[0];
    }
}
