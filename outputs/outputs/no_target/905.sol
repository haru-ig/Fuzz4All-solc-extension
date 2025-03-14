pragma solidity ^0.8.0;
contract SemanticMutation3 {
    function test()
        public
        pure
        returns (bool)
    {
        return 8 >= 8;
    }
    function test0()
        public
        pure
        returns (uint32 x)
    {
        uint8 v;
        v >>= 1;
        x = v;
        assert (x >= v);
        return v;
    }
}
