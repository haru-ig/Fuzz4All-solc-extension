pragma solidity ^0.8.0;
contract SemanticMutation10 {
    function get()
        public
        pure
        returns (uint)
    {
        uint x = 1;
        uint y = x/2;
        uint z = y * (y * y);
        return z;
    }
}

pragma solidity ^0.8.0;
contract SemanticMutation10 {
    function get()
        public
        pure
        returns (uint)
    {
        uint x = (uint256(0x40000000000000000000000000000000000000000000000000000000000000) / 1);
        uint y = (uint256(0x400000000000000000000000000000000000000000000000000000000000000) / x) * (uint256(0x40000000000000000000000000000000000000000000000000000000000000000) / y);
        uint z = (uint256(0x40000000000000000000000000000000000000000000000000000000000000) / x) * (uint256(0x400000000000000000000000000000000000000000000000000000000000000) / y);
        return
