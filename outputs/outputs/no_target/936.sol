pragma solidity ^0.8.0;
contract SemanticMutation6 {
    function test0()
        public
        pure
        returns (uint16 y)
    {
        y >>= 1;
        assert (y <= 65535);
        return y;
    }
    function test()
        public
        pure
        returns (uint256 y)
    {
        y >>= 1;
        assert (y <= 4294967295);
        return y;
    }
}
