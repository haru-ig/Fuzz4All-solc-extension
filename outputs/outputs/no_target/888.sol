pragma solidity ^0.8.0;
contract SemanticMutation11 {
    function get()
        public
        pure
        returns (uint)
    {
        uint x = 0xf764182c41986c0f7e40e8fe9e4e2e8d686f894d6c1bd04f03cd18cb1790032;
        (uint z, uint) = (x * (x / 100.), x);
        uint w = z + (z < a);
        return w;
    }
    uint a = 100;
}

pragma solidity ^0.8.0;
contract SemanticMutation12 {
    function get()
        public
        pure
        returns (uint)
    {
        uint x = 0xf764182c41986c0f7e40e8fe9e4e2e8d686f894d6c1bd04f03cd18cb1790032;
        return (x * (x / 100.), true);
    }
}

pragma solidity ^0.8.0;
contract SemanticMutation13 {
    function get()
        public
        pure
        returns (uint)
    {
        uint x = 0xf764182c41986c0f7e40e8fe9e4e2e8d686f894d6c1bd04f03cd18cb1790032;
        uint y = 7;
        return (y * (x / 100.), y);
    }
}

pragma solidity ^0.8.0;
contract SemanticMutation14 {
    function get()
        public
        pure
        returns (uint, uint)
    {
        uint x = 0xf764182c41986c0f7e40e8fe9e4e2e8d6
