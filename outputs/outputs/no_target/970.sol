pragma solidity ^0.8.0;
contract SemanticMutation20 {
    function test0()
        public
        pure
        returns {return;}
    function test1()
        public
        pure
        returns (uint x)
    {
        uint y;
        x += 10;
        return 0;
    }
    function test2()
        public
        pure
        returns (uint x)
    {
        uint y;
        uint256 z = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffeffffffff000000000000000000000000000000000000000;
        x += z << 128;
        return 0;
    }
    function test3()
        public
        pure
        returns (uint x)
    {
        uint y;
        uint256 z = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffeffffffff00000000000000000000000000000000000000000;
        x += z >> 128;
        return 0;
    }
}
