pragma solidity ^0.8.0;
contract SemanticMutation4 {
    uint256 i;
    function test()
        public
        pure
        returns (bool)
    {
        i = 0;
        i &= 1;
        i &= 2;
        i &= 3;
        i &= 4;
        i &= 5;
        i &= 6;
        i &= 7;
        i &= 8;
        assert (i >= 0);
        return 0;
    }
}
