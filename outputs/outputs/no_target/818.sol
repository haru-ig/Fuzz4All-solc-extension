pragma solidity ^0.8.0;
contract SemanticCheckMutatedSemanticCheck {
    function mod(uint x)
        public pure
        returns(uint)
    {
        uint result;
        assembly {
            result := mod(x, x)
        }
        return a;
    }
}
