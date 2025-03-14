pragma solidity ^0.8.0;
contract Test1866V {
    uint16[102] x = [0x2, 0x4, 0x6, 0x8, 0xa, 0xc, 0xe, 0x10, 0x30, 0x50, 0x70, 0x90];
    function set(uint16 number) public {
        x[3] = number;
    }
    function get() public view returns (uint16) {
        return x[3];
    }
}
