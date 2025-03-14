pragma solidity ^0.8.0;
contract SemanticMutation4 {
    function test()
        public
        pure
        returns (uint32 y)
    {
        y >>= 1;
        assert (y <= 255);
        return y;
    }
    function test0()
        public
        pure
        returns (bool)
    {
        uint8 v;
        v >>= 1;
        uint8 x = v;
        assert (x >= 1);
        return true;
    }
}
contract SemanticMutation5{
    function test0()
        public
        pure
        returns (uint32 x)
    {
        uint8 v;
        v >>= 1;
        uint8  x = v;
        assert (x >= 1);
        x >>= 1;
        uint8 x0 = v;
        uint8 x1 = v;
        assert (x0 == x1);
        return v;
    }
}
