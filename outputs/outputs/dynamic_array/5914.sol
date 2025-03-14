pragma solidity ^0.8.0;
contract Test33789 {
    uint16[7] x = [ 0x2, 0x3, 0x4, 0x6, 0x8, 0x9, 0xa ];
    function set_set(uint16[3][] memory x_set) public {
        x_set[1][0] = 0x2;
    }
    function get_get(uint16[3][] memory get) public get_get(uint16[3][] memory a_get) public view returns (uint16[3][]) {
        uint16[3][] memory get_get;
        get_get[0][0] = x[1][0];
        return get_get;
    }
}
