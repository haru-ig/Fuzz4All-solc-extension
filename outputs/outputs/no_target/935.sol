pragma solidity ^0.8.0;
contract SemanticMutation6{
    function test()
        public
        pure
        returns (uint16 x)
    {
        uint8 v;
        v >>= 1;
        uint8 x = uint8(v);
        assert (x >= 1);
        x >>= 1;
        uint8 x0 = v;
        uint8 x1 = uint8(v);
        assert (x0 == x1);
        return v;
    }
}
