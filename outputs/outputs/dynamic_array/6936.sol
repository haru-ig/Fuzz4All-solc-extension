pragma solidity ^0.8.0;
contract Test2 {
    bool b;
    memory i;
    function f() public {
        bool b1;
        i = 0;
        s2[0] = i;
        i = 1;
        s2[0] = i;
        i = 2;
        s2[0] = i;
        i = 3;
        s2[0] = i;
        i = 4;
        i = 5;


        s2[1] = b1;
        s2[0] = i;
        i = 6;
        s2[0] = i;
        i += 1;
        b1 = false;
    }
    constructor() {
        b = true;
    }
}
