pragma solidity ^0.8.0;
contract D {
    uint public x;
    uint public z;
    uint public ky;
    uint public w;
    uint public counter;
    uint public start_points;
        function foo() public {
        x = 3;

        x = x - 1;
        x = x * 5;
        z = z * x + 2;

        ky = 1000;
    }
}
