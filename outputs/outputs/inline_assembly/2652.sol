pragma solidity ^0.8.0;
contract D {
    uint public x;
    uint public z;
    uint public ky;
    uint public w;
    function foo() external {
        x = z * x + ky;
        w = x * w / 10;
    }
}
