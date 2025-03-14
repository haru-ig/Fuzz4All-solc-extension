pragma solidity ^0.8.0;
contract AssignmentModulation_V5_FixedArraySize {
    uint public a;
    uint[] public x;
    uint public x1;
    uint public x2;
    constructor () public {
        a = 0;
        x = new uint[](1);
        x1 = 1;
        x2 = 0;
    }

    function doWork() public {
        b = 10;
        a = 100000;
        if (x[0] == 125) {
            x1 = 1;
            x2 = 0;
        }
        else {
            x1 = 2;
            x2 = 0;
        }
        x1 -= 1;
        x2 -= 1;
        x[0] = x[0] + 1;
    }
}
