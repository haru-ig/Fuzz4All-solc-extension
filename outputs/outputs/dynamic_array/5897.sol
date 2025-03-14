pragma solidity ^0.8.0;
contract Test1865Z {
    uint16[7][8] x = [0x2, 0x4, 0x6, 0x8, 0xa, 0xc, 0xe, 0xfe];
    uint16[7] z;
    function set(uint16[3][8] memory x_set) public {
        z[1][0] = x_set[1][1];
        x[3][4] = x_set[1][2];
        z[1][4] = x_set[1][3];
    }
    function get() public view returns (uint16[3][8] memory) {
        uint16[3][8] memory z_get;
        z_get[0][0] = x[1][0];
        z_get[0][1] = x[1][0];
        z_get[0][2] = x[3][0];
        z_get[0][3] = x[3][0];
        return z_get;
    }
}
