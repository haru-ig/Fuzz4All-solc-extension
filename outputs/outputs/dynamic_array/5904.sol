pragma solidity ^0.8.0;
contract Test33789 {
    uint16[7] x = [ 0x2, 0x3, 0x4, 0x6, 0x8, 0x9, 0xa ];
    uint16 a;
    function set(uint16[3][] memory x_set) public {
        x_set[1][0] = 0x2;
        a = x_set[1][0];
    }
    function get() public view returns (uint16[3][] memory) {
        uint16[3][] memory a_get;
        a_get[0][0] = a;
        return a_get;
    }
}
