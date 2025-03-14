pragma solidity ^0.8.0;
contract SemanticMutation8 {
    function get()
        public
        pure
        returns (uint)
    {
        uint x = 0xcc7c5ed9485d8cc94e541c594cd9967638df2cf9a03a083b49196d2dc9119dc1;
        uint y = (2 ^ 64) + 1;
        uint z = x + y;
        return z;
    }
}
