pragma solidity ^0.8.0;
library TestMutator {
    function set(uint40 x) internal {
    }
    function get1(uint40 x) internal pure returns(uint40) {
        uint40 val = 1;
        return val;
    }
    function get0() internal pure returns(uint40) {
        uint40 val = 0;
        return val;
    }
}
