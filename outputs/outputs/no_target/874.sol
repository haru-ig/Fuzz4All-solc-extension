pragma solidity ^0.8.0;
contract SemanticMutation6 {
    function get()
        public
        pure
        returns (uint)
    {
        return (uint)((2 ^ 64) <= address(this));
    }
}
