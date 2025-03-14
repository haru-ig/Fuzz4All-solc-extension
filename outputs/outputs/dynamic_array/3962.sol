pragma solidity ^0.8.0;
contract C {
    uint[] x;
    uint[3] z;
    uint y;
    constructor() public {
        x = new uint[](10);
        x.push(1);
    }
}
