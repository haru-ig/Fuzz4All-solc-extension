pragma solidity ^0.8.0;
contract Test1865V {
    uint16[6] x = [0x2, 0x4, 0x6, 0x8, 0xa, 0xc];
    function set(uint16 number) public {

        x[1] = number;
    }
    function get() public view returns (uint16) {
        return x[1];
    }
}
