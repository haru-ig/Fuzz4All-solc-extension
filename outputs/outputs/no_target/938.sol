pragma solidity ^0.8.0;
contract SemanticMutation6 {
    function test()
        public
        pure
        returns (uint32 x)
    {
        x >>= 1;
        x >>= 1;
        uint32 y =  v >> 1;
        x >>= 2;
        assert (v <= 255);
        return x;
    }
}
