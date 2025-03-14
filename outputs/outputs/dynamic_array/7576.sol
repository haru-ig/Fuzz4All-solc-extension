pragma solidity ^0.8.0;
contract Test18Mut {
    uint A;
    uint B;
    uint C;
    constructor() public {
        A = 1;
        B = 1;
        A += 1;
        C += 1;
        B += 1;
        C += 1;
    }
}
contract Test19Mut {
    uint A;
    uint B;
    uint C;
    constructor() public {
        A = 1;
        B = 1;
        A += 1;
        C += 1;
        B += 1;
        C += 1;
    }
}
