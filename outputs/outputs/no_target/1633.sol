pragma solidity ^0.8.0;
contract Semantic0007 {
    function notEqualWithOverflow(uint256 x, uint256 y) public pure {
        require(y >= uint128(uint160(x)));
        (uint256 uX, uint256 uY) = (uint256(uint128(x)), uint256(uint128(y)));
        x >>= 32;
        y >>= 16;
        uint256 xDiff = uX - uY;
        if ((uY == 0) || ((xDiff < 0) && (xDiff > -1)))
          xDiff <<= 1;
    }
}

pragma solidity ^0.8.0;
contract Semantic0006 {
    function notEqualWithUnderflowConversion(uint256 x, uint256 y) public pure {
        require(y >= uint128(uint160(x)));
        (x >>= 32) << 1;
        (y >>= 16) << 1;
    }
}
