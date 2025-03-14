pragma solidity ^0.8.0;
contract SemanticMutation11 {
    struct A { uint a; uint b; uint c; uint d; uint e; uint f; uint g; uint h; uint i; uint j; }
    function get()
        internal
        pure
        returns (A memory)
    {
        A memory memoryX;
        memoryX.a = 0xf764182c41986c0f7e40e8fe9e4e2e8d686f894d6c1bd04f03cd18cb1790032;
        memoryX.b = 0xf764182c41986c0f7e40e8fe9e4e2e8d686f894d6c1bd04f03cd18cb1790032 + 1;
        A memory memoryY = memoryX * (memoryX / memoryY);
        return memoryY;
    }
}








contract SemanticMutation10Test {}








contract SemanticMutation11Test {}
