pragma solidity ^0.8.0;
 contract Semantic0008 {
    function xorWithoutCasting(uint128 x, uint128 y) public pure {
        uint128 _xorWithoutCasting_before = x ^ y;
        uint128 _xorWithoutCasting_after = 0 < _xorWithoutCasting_before && _xorWithoutCasting_before <= x && _xorWithoutCasting_before >= y;
        x -= _xorWithoutCasting_before;
        y -= _xorWithoutCasting_before;
        require(_xorWithoutCasting_after);
    }
    function xorWithoutCasting2(uint128 x, uint128 y) public pure {
        uint128 _xorWithoutCasting_before = x ^ y;
        uint128 _xorWithoutCasting_after = 0 < _xorWithoutCasting_before && _xorWithoutCasting_before == (x ^ y);
        x -= _xorWithoutCasting_before;
        y -= _xorWithoutCasting_before;
        require(_xorWithoutCasting_after);
    }
    uint128 _unsafe_x = 0;
    uint128 _unsafe_y = 0;
    function set_unsafe_x_and_y(uint128 x, uint128 y) public pure {
        _unsafe_x = x;
        _unsafe_y = y;
        }
    function unsafe_xorWithoutCasting(uint128 _x, uint128 _y) public pure returns (uint128 result) {
        uint1
