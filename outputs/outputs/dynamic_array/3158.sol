pragma solidity ^0.8.0;
contract AssignmentModulation_V6_Mutated {
    uint public a;
    uint public b;
    uint32[] public x;
    uint public x1;
    uint public x2;
    constructor () public {
        a = 0;
        b = 0;
        x = new uint32[](2);
        x[0] = 125;
        uint256 zero = 0;
        x[1] = zero;
        x1 = 0;
        x2 = 0;
    }
    function doWork() public {
        b = 100;
        a = 100000;
        if (a == 100000 && b == 0) {
            if (x[1] > 0) { x2 = 0; }
            x1 = 0;
        }
        else {
            if (x[1] < 0) {x1 = 0;}
            if (x[1] >= 0) {x2 = 0;}
            x2 = 1;
        }
        x = [125, 0];
    }
}
