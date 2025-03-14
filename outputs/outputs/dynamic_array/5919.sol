pragma solidity ^0.8.0;
contract Test33873 {
    uint16[7] x = [ 0x2, 0x3, 0x4, 0x6, 0x8, 0x9, 0xa ];
    uint16 a = 0x2;
    function set_empty(uint16[3][] calldata x_set) public {
        x_set[0][0] = 0x2;
        a = x_set[0][0];
    }
    function mutated() public view returns (uint16[3][] calldata) {
        uint16[3][] memory a_get;
        a_get[0][0] = a;
        return a_get;
    }
}
