pragma solidity ^0.8.0;
contract SemanticMutation4 {
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
        byte[] memory w = new bytes(0);
        memcpy(x);
        assert (x >= 0);
    }
}
