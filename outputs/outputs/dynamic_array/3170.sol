pragma solidity ^0.8.0;
contract AssignmentMutating {
    uint public a;
    uint public b;
    uint public c;
    uint[] public x_;
    uint public x1;
    uint public x2;
    constructor () public {
        a = 0;
        b = 0;
        c = 0;
        x1 = 1;
        x2 = 0;
    }
    function doWork() public {
        C.b = 10;
        C.a = 100000;
        C.c = 3;
        if (C.c == 6 && C.a == 100000 && C.b == 0) {
            C.x1 = 1;
            C.x2 = 0;
        }
        else {
            C.x1 = 2;
            C.x2 = 0;
        }
        C.x1 -= 1;
        C.x2 -= 1;
        C.x1 = C.x1 + 1;
        C.x2 = C.x2 + 1;
    }
}
