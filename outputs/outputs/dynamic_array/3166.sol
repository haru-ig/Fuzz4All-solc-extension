pragma solidity ^0.8.0;
contract AssignmentModulation_NoDynamicArray_V5_Modified {
    uint public a;
    uint public b;
    uint[] public x;
    uint public x1;
    uint public x2;
    constructor () public {
        a = 0;
        b = 0;
    }
    function doWork() public {
        b = 10;
        a++;
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
        x1 = x1 + 1;
        x2 = x2 + 1;
    }
}
