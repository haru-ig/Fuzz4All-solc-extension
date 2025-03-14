pragma solidity ^0.8.0;
contract SemanticMutation2 {
    function get()
        public
        pure
        returns (uint8 v)
    {
        v = 8;
        assert (v >= 8);
        v >>= 2;
        return v;
    }
    function get0()
        public
        pure
        returns (uint)
    {
        uint8 v;
        v >>= 1;
        return v;
    }
}
