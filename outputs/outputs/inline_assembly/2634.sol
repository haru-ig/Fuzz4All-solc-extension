pragma solidity ^0.8.0;
contract D {
    uint public x;
    uint public z;
    uint public ky;
    uint public w;

    function foo() public {
        x = 3;
        w = 0;

        x%=-5;
        w=w * 8;
    }
}
