pragma solidity ^0.8.0;
contract Test1865V {
    uint16[6] memory x;
    function get() public view returns (uint16) {
        return x[2];
    }
    constructor() {
        x[2] = 0x2;
    }
    function set(uint16 n) public {
        x[2] = n;
    }
}
