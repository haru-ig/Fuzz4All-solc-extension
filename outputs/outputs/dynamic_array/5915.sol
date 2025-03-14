pragma solidity ^0.8.0;
contract Test00257 {
    void set(uint16[7] x_set) public {
        x_set[0][0] = 0x2;
    }
    address set(uint16[7] x_set, uint16 a_set) public {
        a_set = 0x2;
    }
    function get() public view returns (uint16[7] memory) {
        uint16[7] memory a_get;
        a_get = [ 0x2, 0x3, 0x4, 0x6, 0x8, 0x9, 0xa ];
        return a_get;
    }
}
