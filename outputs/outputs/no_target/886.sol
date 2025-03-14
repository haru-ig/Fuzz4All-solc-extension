pragma solidity ^0.8.0;
contract SemanticMutation11 {
    function get()
        public
        pure
        returns (uint)
    {

        uint x = 0xf764182c41986c0f7e40e8fe9e4e2e8d686f894d6c1bd04f03cd18cb1790032;

        uint y = x / (x / x);
        return y;
    }
}
