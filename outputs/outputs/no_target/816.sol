pragma solidity ^0.8.0;
contract SemanticCheckMutatedSyntheticSemanticCheck {
    function add2(uint a)
        public pure
        returns(uint)
    {
        uint result;
        assembly {
            result := add(a, 100)
            revert(0, 0)
        }
        return a;
    }
    function mult2(uint a)
        public pure
        returns(uint)
    {
        uint result;
        assembly {
            result := mul(a, a)
        }
        return a;
    }
}
