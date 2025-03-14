pragma solidity ^0.8.0;
contract AssignmentModulation_V5_Unmodified {
    uint public a;
    uint public b;
    uint[] public x;
    uint public x1;
    uint public x2;
    constructor () public {
        a = 0;
        b = 0;
        x = new uint[](2);
        x1 = 1;
        x2 = 0;
    }
    function doWork() public {
        b = 10;
        a = 100000;
        if (a == 100000 && b == 0) {
            x1 = 1;
            x2 = 0;
        }
        else {
            x1 = 2;
            x2 = 0;
        }
        x1 -= 1;
        x2 -= 1;
        x[0] = 125;
        x[1] = 125;
        require(x[1] < 130, "Negative number");
    }
}
