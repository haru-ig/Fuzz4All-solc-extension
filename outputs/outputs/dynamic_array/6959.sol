pragma solidity ^0.8.0;
contract Test7 {
    uint[][] a;
    constructor() {
        a[1] = new uint[](1);
        uint[] memory i1 = a[1];
        uint[] memory i2 = i1;
        uint[] memory i3;
        i3 = i2;
        i2 = i3;
    }
}
