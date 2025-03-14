pragma solidity ^0.8.0;
contract SemanticMutation4 {
    function test()
        public
        pure
        returns (uint64 a, uint32 v)
    {
        unchecked {
            a = 0xa;
            v <<= 1;
        }
        assert(a!= 0xa);
        return a;
    }
}
