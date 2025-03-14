pragma solidity ^0.8.0;
contract BetterCase3 {
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    constructor(uint x, uint y, uint z, uint w, uint u, uint v) {
        a = x;
        b = y;
        c = z;
        d = w;
        e = u;
    }
    function setX(uint x) public {
        a = x;
    }
    function get() public view returns (uint) {
        return a;
    }
}
