pragma solidity ^0.8.0;
contract SemanticMutation4 {
    function test()
        public
        pure
        returns (bool)
    {
        return (uint32(now) >= uint32(now));
    }
    function test0()
        public
        pure
        returns (uint32 x)
    {
        uint8 s;
        v >>= 1;
        x = s;
        assert (x >= s);
        return s;
    }
}
