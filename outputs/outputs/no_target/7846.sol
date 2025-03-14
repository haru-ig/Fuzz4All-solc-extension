pragma solidity ^0.8.0;
library TestMutator {
    mapping (uint40 => uint40) public v;
    function set(uint40 x) internal {
        bytes32 key = "a";
        v[key] = x;
    }
    function get1(uint40 x) internal pure returns(uint40) {
        bytes32 key = "a";
        uint40 val = v[key];
        return val;
    }
    function get0() internal pure returns(uint40) {
        bytes32 key = "a";
        uint40 val = v[key];
        return val;
    }
}
