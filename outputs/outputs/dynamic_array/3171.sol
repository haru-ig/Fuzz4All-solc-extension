pragma solidity ^0.8.0;
contract AssignmentModulationMutate {
    uint public a;
    uint public b;
    uint public c;
    uint[] public x_;
    uint public x1;
    uint public x2;
    uint lastStep = 15;
    constructor () public {
        a = 0;
        b = 0;
        c = 0;
        x1 = 1;
        x2 = 0;
    }
    function doWork() public {
        if (b == 0 && a == lastStep) {
            lastStep -= 1;
            x1 = 1;
            x2 = 0;
        }
        else {
            lastStep -= 1;
            x1 = 2;
            x2 = 0;
        }
        x1 += 1;
        x2 += 1;
        x1 -= 1;
        x2 -= 1;
        x1 = x1 + 1;
        x2 = x2 + 1;
        c += 1;
    }
}
