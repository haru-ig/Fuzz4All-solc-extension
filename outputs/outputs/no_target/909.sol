pragma solidity ^0.8.0;
contract SemanticMutation3 {
    function get()
        public
        pure
        returns (int16 v)
    {
        v = -8;
        assert (v < -8);
        v >>= 2;
        return v;
    }
    function get0()
        public
        pure
        returns (uint)
    {
        int16 v;
        v >>= 1;
        return v;
    }
}
