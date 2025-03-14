pragma solidity ^0.8.0;
contract SemanticMutation5 {

    function get()
        public
        pure
        returns (uint)
    {
        return (uint)((2 ^ 64) + 1);
    }
}
