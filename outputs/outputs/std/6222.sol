pragma solidity ^0.8.0;
contract MutatedGeneration4 {
    uint p;
    uint q;
    function f() public returns (uint256) {
        p = 2;
        return q + p;
    }
}
