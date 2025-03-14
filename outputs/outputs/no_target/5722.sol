pragma solidity ^0.8.0;
contract TaintedAddresses {
    uint z;
    receive() external payable {
        Taint taint = new Taint(z, 42);
        Taint taint2 = new Taint(z, -99);
        taint.x == taint2.x;
    }
}
contract Taint {
    uint x;
    address y;
    constructor(uint a, address b) { this.x = a; this.y = b; }
}
