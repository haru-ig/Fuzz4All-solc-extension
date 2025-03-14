pragma solidity ^0.8.0;
contract Test5 {
    constructor(uint b) {
        uint[] memory a;
        a[1] = b;
        uint[] memory i1 = a;
        uint[] memory i2 = i1;
        uint[] memory i3 = new uint[](2);
        i1 = i3;
    }
}
