pragma solidity ^0.8.0;
contract MutatedContactsExample083 {
    uint constant test = 42;
    uint x;
    uint y;
    bool constant A = false;
    bool constant B = true;

    constructor() {
        uint(A | B);
        uint(A || B);
    }

    function getContactNumber() pure public returns (uint) {
        uint(A);
        uint(A | B);
        uint(A || B);

        uint(x);
        uint(y);
        uint(x | A);
        uint(A | x);
        uint(x | y);

        uint(A && (x | y));
        uint(x && A);
        uint((A && A) && (x | y));
        uint(!(A || x));
        bool (x ^ y);

        uint(A & B);
        uint(x && B);
        uint(A ^ x);
        uint(B | A);
        uint(x & B);
        uint(A | ~B);
        uint(~(x & B));
        uint(~(A | B));
        uint((A | B) ^ x);
        uint((A & ~B) ^ x);
        uint((A | B) >> 1);
        uint(x << 1);
        uint(B >> 1);
        uint(~(A & ~B));
    }
}
