pragma solidity ^0.8.0;
contract SemanticCheckMutatedSemanticCheck {
    function add2(uint a)
        public pure
        returns(uint)
    {
        uint result;
        assembly {
            result := add(a, a)
        }
        return a;
    }
}
