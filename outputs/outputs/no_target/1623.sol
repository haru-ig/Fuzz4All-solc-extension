pragma solidity ^0.8.0;
contract Semantic0007 {
    function notEqualWithoutCastAndEquality(uint256 x, uint256 y) public pure {
        uint256 _x = uint256(uint160(x));
        uint160 _y = uint160(y);
        require(_y >= _x);
        _y >>= 32;
    }
    function notEqualWithoutCastAndEquality2(uint128 x, uint256 y) public pure {
        uint128 _x = uint128(uint160(x));
        uint160 _y = uint160(y);
        require(_y >= _x);
        _y >>= 32;
        _y >>= 32;
    }
    function notEqualWithoutCastAndEquality3(uint256 x, uint128 y) public pure {
        uint128 _x = uint128(uint160(x));
        uint256 _y = uint256(y);
        require(_y >= _x);
        _y >>= 32;
        _y >>= 32;
        _y >>= 32;
    }
    function notEqualWithoutCastAndEquality4(uint128 x, uint128 y) public pure {
        uint128 _x =
