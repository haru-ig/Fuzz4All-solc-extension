pragma solidity ^0.8.0;
contract MutatedGeneration3 {
    uint p;
    function f() public returns (uint256) {
        p = 2;
        return p;
    }
}
