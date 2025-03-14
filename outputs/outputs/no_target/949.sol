pragma solidity ^0.8.0;
contract SemanticMutation8 {
    function test0()
        public
        pure
        returns (uint16)
    {
        uint16 x = 4;
        uint16 y = uint16(x >> 1);
        assert (y <= 65535);
        x >>= 1;
        assert (x <= 65535);
        return x;
    }
}
