pragma solidity ^0.8.0;
contract Q {
    uint32 constant initIB = 9;

    struct Ib {
        uint8 d;
        uint8 c;
        uint8 b;
        uint8 a;
        uint256 e;
        uint256 d;
        uint256 b;
        uint256 a;
    }
    Ib public ab;
    event LogEb (uint8 d, uint8 c, uint8 b, uint8 a, uint256 e, uint256 d, uint256 b, uint256 a);

    constructor() public {
        ab.a = initIB % 10;
        ab.d = initIB % 100;
        ab.e = initIB % 1000;

        emit LogEb (ab.d, ab.c, ab.b, ab.a, ab.e, ab.d, ab.b, ab.a);
    }
}
