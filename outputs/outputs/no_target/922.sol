pragma solidity ^0.8.0;
contract SemanticMutation4 {
    function test()
        public
        view
        returns (uint256)
    {
        delete SemanticMutation3.test;
        uint32 y;
        y <<= 1;
        uint256 x;
        x = y;
        assert (x > 100);
        return x;
    }
}
