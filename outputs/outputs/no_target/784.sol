pragma solidity ^0.8.0;
contract SemanticCheckSemanticsBroken {
    uint256 x = 0;
    uint256 y;

    function addy(uint256 a)
        public
        pure
        returns(uint256)
    {
        x = a + 1;
        y = a + x;
        x = uint256(x + 1);
        return x + a * y;
    }
}
