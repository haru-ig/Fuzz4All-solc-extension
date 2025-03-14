pragma solidity ^0.8.0;
contract D {
    uint[][][2] b1;
    uint[10] memory a;
    constructor () {
        b1 = new uint[1][2][2][2][2][2][2][][][](10);
        a = new uint[](10);
        b1 = new uint[any][][][](10);
        a = new uint(any);
        b1 = new uint[]{any}[][][](10);
        a = new uint[*](10);
        uint[10] memory arrayA = new uint[](1);
        return;
    }
}
