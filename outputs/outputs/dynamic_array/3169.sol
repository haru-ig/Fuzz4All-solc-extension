pragma solidity ^0.8.0;

contract AssignmentModulation_NoDynamicArray_V8_Updated {
    uint public a;
    uint[] public x;
    uint public x1;
    uint public x2;

    uint[] public xOld;
    constructor () public {
        xOld = new uint[](100000);


        doWork();
        x = new uint[](x1);
        x = x + xOld;
        xOld = new uint[](x2);
        xOld = xOld + xOld;
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
        x1 = x1 + 1;
        x2 = x2 + 1;
    }
}
