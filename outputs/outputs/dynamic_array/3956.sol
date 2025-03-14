pragma solidity ^0.8.0;
contract C {
    uint[] x;
    uint[] z;
    uint[3] y;
    constructor() public {
        x = new uint[](10);
        x.push(1);
    }
}
