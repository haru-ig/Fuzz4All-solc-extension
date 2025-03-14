pragma solidity ^0.8.0;
contract A { uint[] _array; uint[] _nestedArray; }
contract B {
    B a1;
    A a2;

    constructor() public {
        a1 = B(uint8(7));
        a2 = A(uint8(7));
        a1.a2.nestedArray = a2.nestedArray;
        a1.a2.nestedArray = ["b0", "b1", "b2"];
        a1.a2.nestedArray = B(uint8(7));
    }
}
