pragma solidity ^0.8.0;
contract Test23789 {
    uint16[7] x = [ 0x2, 0x3, 0x4, 0x6, 0x8, 0x9, 0xa ];
    uint16[3] a;
    function set(uint16[3][] memory x_set) public {
        a = x_set[1][0];
        x_set[0] = x;
        x_set[1][0] = 0xFFFF;
        x_set[1][1] = 0x1;
        x_set[2] = 0x3;
    }
    function get() public view returns (uint16[3][] memory) {
        uint16[3][] memory a_get;
        a_get[0][0] = a;
        a_get[1][0] = x[1][1];
        a_get[2][0] = x[2][1];
        a_get[0][1] = x[1][0];
        a_get[1][1] = x[1][0];
        a_get[2][1] = x[2][0];
        return a_get;
    }
}
