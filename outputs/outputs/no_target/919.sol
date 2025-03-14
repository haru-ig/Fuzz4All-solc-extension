pragma solidity ^0.8.0;
contract SemanticMutation4 {
    function test()
        public
        pure
        returns (bool)
    {
        uint32 x;
        x |= 8;
        assert (x == 9);
        bool b;
        b |= 8;
        assert (b == true);
        b &= 8;
        assert (b == false);
        x = uint32(-49);
        uint8 v;
        v >>= 1;
        x = v;
        x |= 8;
        x &= ((uint32(-46)) & (uint32(-46))) + (uint32(-51));
        x &= ((uint32(-46)) & (uint32(-46))) + (uint32(-51));
        x += v;
        x += v;
        x -= v;
        b =!(b &&!(b && b));
        return v >= 0;
    }
}
