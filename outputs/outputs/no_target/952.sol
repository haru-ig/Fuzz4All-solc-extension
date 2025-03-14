pragma solidity ^0.8.0;
contract SemanticMutation9 {
    function test0()
        public
        pure
        returns (uint16)
    {
        uint16 x = 4;
        uint16 y = x >> 1;
        uint16 z = x >> 2;
        uint16 w = z + y >> 1;
        uint16 v = w - y >> 1;

        assert (x <= 65535);
        assert (y <= 65535);
        assert (z <= 65535);
        assert (v <= 65535);

        return x;
    }
}
