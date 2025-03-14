pragma solidity ^0.8.0;
contract MutatedGeneration5 {
    uint p;
    function f() public returns (uint256) {
        p += 50;
        return 5;
    }
}
