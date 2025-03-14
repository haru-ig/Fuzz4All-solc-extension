pragma solidity ^0.8.0;
contract SemanticMutation4 {
    function test()
        public
        pure
        returns (bool)
    {
        uint128 v;
        v += 10000000000000000000000000000000000;
        v >>= 1;
        assert (v >= 100000000000000000000000000000000);
        return v;
    }
}
