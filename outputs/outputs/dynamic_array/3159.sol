pragma solidity ^0.8.0;
contract AssignmentModulation_V5_Mutated{
    uint internal a;
    uint internal b;
    uint internal[] internal x;
    uint internal x1;
    uint internal x2;
    constructor () public {
        a = 0;
        b = 0;
        x = new uint[](2);
        x[0] = 0;
        x[1] = 0;
        x1 = 0;
        x2 = 0;
    }
    function doWork() public {
        b = 1000;
        a = 0;
        if (a == 0 && b == 0) {
            x1 = 1;
            x2 = 0;
        }
        else {
            x1 = 2;
            x2 = 0;
        }
        x[0] = 0;
        x[1] = 0;
    }
}
