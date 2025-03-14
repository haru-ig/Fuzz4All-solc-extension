pragma solidity ^0.8.0;
contract C8 {
    struct T1 { uint256 a; T2 t2; }
    struct T2 { uint256 b; T1 t1; }
    constructor(uint256 x) public {
        t1.a = x;
        t1.t2.b = x;
        t2.b = x;
        t2.t1.a = x;
    }
}
