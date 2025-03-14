pragma solidity ^0.8.0;
contract Test67 {
    uint256 i;
    mapping(uint256 => uint256) map;
    uint256 j;
    function set(uint256 k, Uint memory t) public {
        i = k;
        map[k] = k;
        j = map[k];
        j = k;
    }

    struct Uint {
        uint a;
    }
}
