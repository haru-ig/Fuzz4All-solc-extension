pragma solidity ^0.8.0;
library TestMutator2 {
    function set(uint96 x) internal {
    }
    function get1(uint96 x) internal pure returns(uint96) {
        uint96 val = 1;
        return val;
    }
    function get0() internal pure returns(uint96) {
        uint96 val = 0;
        return val;
    }
}
assembly {
    struct S {
        S(uint256 _val) {}

        function get1(uint256 _val) internal internal pure returns(uint256) {
            return return(1)
        }

        function get0() internal internal pure returns(uint256) {
            mstore(0x0, 0)
            return return(0)
        }

        function return(uint256 x) internal {
            mstore(0x40, add(_val, x))
        }
    }
}
