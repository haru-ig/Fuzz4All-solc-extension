pragma solidity ^0.8.0;
contract SemanticMutation10 {
    function get()
        public
        pure
        returns (uint)
    {
        uint x = 1;
        uint y = 5;
        uint z = x - y;
        return z;
    }
}
