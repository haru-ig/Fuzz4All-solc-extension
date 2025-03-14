pragma solidity ^0.8.0;
contract SemanticMutation6 {
    function test0(uint y)
        public
        pure
        returns (uint32 z)
    {
        z += y;
        assert (z!= x+y);
    }
}
