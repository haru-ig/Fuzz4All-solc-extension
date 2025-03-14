pragma solidity ^0.8.0;
contract Test33789 {
    uint16[3][7] x =
        [
            [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0],
            [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0]
        ];
    uint16 a = 0x0;
    function set(uint16[7][] memory x_set) public {
        x_set[0][0] = 0x0;
        a = x_set[0][0];
    }
    function get() public view returns (uint16[7][] memory) {
        uint16[7][] memory a_get;
        a_get[0][0] = x[0][0];
        return a_get;
    }
}
