pragma solidity ^0.8.0;
contract SemanticCheckMutated2 {
    function check_negate_literal()
        public pure
        returns(bool)
    {
        return 0xffffffffffffffff - 1;
    }
}
