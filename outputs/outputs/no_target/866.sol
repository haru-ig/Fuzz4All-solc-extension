pragma solidity ^0.8.0;
contract SemanticCheckMutated6 {
    function toUint8(uint x)
        public
        pure
        returns (uint8)
    {
        uint8 y = uint8(x);
        assert(y < 10);
        return y;
    }
}
pragma solidity ^0.8.0;
contract SemanticCheckMutated7 {
    function toUint8_1(uint256)
        public
        pure
        returns (uint8)
    {
    }
}
