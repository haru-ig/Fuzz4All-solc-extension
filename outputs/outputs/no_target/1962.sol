pragma solidity ^0.8.0;
contract MutedSematic {
    bytes1 m;
    uint x;
    function f() public {
        m = m + bytes1(0);
        x = x + 1;
    }
}
