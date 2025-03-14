pragma solidity ^0.8.0;
contract SemanticMutation4 {
    function test()
        public
        pure
        returns (bool)
    {
        return test0(32, 32);
    }
    function test0(uint16 x, uint16 y)
        public
        pure
        returns (bool)
    {
        return (x >= y);
    }
}
