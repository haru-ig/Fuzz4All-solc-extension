pragma solidity ^0.8.0;
contract Test6 {
    constructor(uint b) {
        uint[] memory a;
        a[1] = b;
        uint[] memory i1 = a;
        uint[] memory i2 = i1;
        uint[] memory i3 = i2;
        i2 = i3;
    }
}
