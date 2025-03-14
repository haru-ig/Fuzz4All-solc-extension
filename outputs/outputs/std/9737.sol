pragma solidity ^0.8.0;
contract MutatePos1 {
    uint x;
    uint y = 0;
    address addr = address(0);
    constructor () {
        x = y;
    }
}
pragma solidity 0.8.0;
contract MutatePos0 {
    uint[2] x;
    uint[2] y = [0, 0];
    uint[2] z;
    uint[2] w = [address(0), address(0)];
    address[][] zs = {{0, address(0)}, {address(0), address(0)}};
    address[][] ww;
    constructor() {
        x[0] = x[1];
        y[0] = y[1];
    }
}
