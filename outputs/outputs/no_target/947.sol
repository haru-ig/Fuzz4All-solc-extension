pragma solidity ^0.8.0;
contract SemanticMutation8 {
    function test0()
        public
        pure
        returns (uint16 y)
    {
        y >>= 1;
        if (y > 65535) revert();
        return y;
    }
}
