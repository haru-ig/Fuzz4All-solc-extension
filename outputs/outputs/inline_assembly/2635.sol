pragma solidity ^0.8.0;
contract D {
    uint public x;
    uint public z;
    uint public w;
    uint public ky;
        function foo() public {
        x = 10;
        w = 0;
        x = x * 5 + 2;
        z = z * x + 2 * x + 3;
        w = w++ * 8 * 8;
        ky = 100;
    }
}
