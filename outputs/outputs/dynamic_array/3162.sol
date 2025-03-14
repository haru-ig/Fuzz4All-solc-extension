pragma solidity ^0.8.0;
contract AssignmentModulation_V5_Improvement {
    uint public a;
    uint public b;
    uint[] public x;
    uint public x1;
    uint public x2;
    uint public x3;
    uint public x4;
    constructor () public {
        a = 0;
        b = 0;
        x = new uint[](5);
        x1 = 1;
        x2 = 0;
        x3 = 0;
        x4 = 0;
    }
    function doWork() public {
        b = 10;
        a = 100000;
        if (x2 == 0) {
            require((x[1] == 125  && x[2] == 125 && x[3] == 125 && x[4] == 125), "Wrong data is added to array");
            require(x[2] < 129, "Error in index assignment");
            x1 += 1;
            x2 += 1;
        }
        else {
            require((x[1] == 125), "Wrong data is added to array");
            x1 -= 1;
            x2 -= 1;
        }
        require(x[0] < 130, "Negative number");
    }
}
