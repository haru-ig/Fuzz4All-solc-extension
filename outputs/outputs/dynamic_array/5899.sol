pragma solidity ^0.8.0;
contract Test1866W {
    uint16[3] a = [0x1, 0x2, 0x3];
    uint16[3] memory x = [0x2, 0x4, 0x6];
    function set(uint16[3][2][] memory x_set) public {
        a[1] = x_set[1][0];
    }
    function get() public view returns (uint16[3] memory) {
        uint16[3] memory x_get;
        x_get = x;
        x_get[1] = a[1];
        return x_get;
    }
}
