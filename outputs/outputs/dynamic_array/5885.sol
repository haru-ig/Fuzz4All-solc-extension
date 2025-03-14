pragma solidity ^0.8.0;
contract Test1865I {
    uint32[4] z = [0x4c5, 0x6f6, 0x314, 0x628];
    function set(uint16 number) public {
        z[0] = 1;
    }
    function get() public view returns (uint16) {
        return z[0];
    }
}
