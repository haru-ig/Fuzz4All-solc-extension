pragma solidity ^0.8.0;
contract SemanticCheckMutated6 {
    function get()
        public
        pure
        returns (uint)
    {
        return (uint) 2 ** (int(32) - 1);
    }
}
