pragma solidity ^0.8.0;
contract SemanticMutation10 {
    function get()
        public
        pure
        returns (uint)
    {
        uint z = 10 * 10 ** 7;
        uint w = 10000 * -1;
        uint x = -w;
        uint y = x + 10 ** 10;
        uint z1 = z + 10 ** 10;
        return y;
    }
}
