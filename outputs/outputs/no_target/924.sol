pragma solidity ^0.8.0;
contract SemanticMutation4 {
    function test(uint32 v)
        public
        pure
        returns (bool)
    {
        bool b = v >= 8;
        if (b) {
            return true;
        }
        (uint b1,) = v;
        uint a = v >= b1;
        assert (a == b);
        return true;
    }
}
