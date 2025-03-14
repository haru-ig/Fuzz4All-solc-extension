pragma solidity ^0.8.0;
contract SemanticMutation10 {
    function get()
        public
        pure
        returns (uint8)
    {
        uint8 x = 0xf764182c41986c0f7e40e8fe9e4e2e8d686f894d6c1bd04f03cd18cb1790032;
        uint8 y = 0xf764182c41986c0f7e40e8fe9e4e2e8d686f894d6c1bd04f03cd18cb1790032 - 1;
        uint8 z = x - y;
        return z;
    }
}
