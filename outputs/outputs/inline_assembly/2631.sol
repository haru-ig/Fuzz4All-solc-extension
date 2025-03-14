pragma solidity ^0.8.0;
contract D2 {
    uint public x;
    uint public z;
    uint public ky;
    uint public w;
        function foo() public {
        x = 3;
        w = 0;
        x = x - 1;
        x = x * 5;
        z = z * x + 2;
        w = w * 8;
        ky = 1000;
    }
}
