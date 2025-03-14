pragma solidity ^0.8.0;
contract Test33843 {
    uint16[7] x = [ 0x2, 0x3, 0x4, 0x6, 0x8, 0x9, 0xa ];
    uint16 a;
    function set(uint16 s_set, uint24 s_set_int_8) public {
        uint16 a_set;
        a_set = s_set;
        if (s_set == a_set)
            a_set = s_set_int_8;
        while (uint256(a_set) < uint256(s_set_int_8))
            a_set++;
        a = a_set;
    }
    function get() public view returns (uint16) {
        uint16 a_get;
        a_get = a;
        return a_get;
    }
}
