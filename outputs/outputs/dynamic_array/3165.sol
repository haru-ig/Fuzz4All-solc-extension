pragma solidity ^0.8.0;
contract AssignmentModulation_DynamicArray_V5_Modified {
    uint public a;
    uint public b;
    uint[] public x;
    uint public x1;
    uint public x2;
    constructor () public {
        array_test();
        a = 0;
        b = 0;
    }
    function array_test() public {
        b = 10;
        a = 100000;
        x = new uint[](10);
        if (a == 100000 && b == 0 || a == 100000) {
            x[0] = 1;
            x[1] = 0;
        }
        else {
            x[0] = 2;
            x[1] = 0;
        }
        x[x.length - 1] = 0;
    }
    function doWork() public {
        b = 10;
        a = 100000;
        if (a == 100000 && b == 0 || a == 100000) {
            x[2] = 1;
            x[3] = 0;
        }
        else {
            x[2] = 2;
            x[3] = 0;
        }
        x[y - 1] = 0;
    }
}
