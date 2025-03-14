pragma solidity ^0.8.0;
contract SemanticCheckMutatedSemanticCheck {
    function sub(uint a)
        public pure
        returns(uint)
    {
        uint result;
        assembly {
            result := sub(a, a)
        }
        return a;
    }
}
