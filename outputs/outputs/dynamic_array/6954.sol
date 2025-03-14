pragma solidity ^0.8.0;
contract Test6 {
    uint[] a;
    constructor() {
        a[1] = 8;
        uint[] memory i1 = a;
        uint[] memory i2 = i1;
        uint[] memory i3;
        i3 = i2;
        i2 = i3;
    }
}
