pragma solidity ^0.8.0;
contract Mutate33789 {
    uint16[7] x = [0x2, 0x3, 0x4, 0x6, 0x8, 0x9, 0xa];
    uint16[1] y = 0x2;
    function set(uint16[3][1] memory x_set) public {
        x_set[0] = x_set;
        y = x_set[1];
    }
    function get() public view returns (uint16[3][1] memory, uint16) {
        uint16[3][1] memory a_get, i;
        a_get[0] = x[0];
        a_get[1] = y;
        return a_get, x_set;
    }
}
