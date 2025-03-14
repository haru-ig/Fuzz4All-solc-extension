pragma solidity ^0.8.0;
contract SemanticMutation4 {
    function test()
        public
        pure
        returns (bool)
    {
        uint8 v;
        v |= 0xFF80;
        uint32 i = 32 + v;
        uint32 x = i + 2**24;
        assert (x >= v);
        return v;
    }
}
