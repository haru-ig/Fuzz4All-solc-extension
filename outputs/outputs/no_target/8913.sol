pragma solidity ^0.8.0;

contract EquivalentAbiMutations_v1 {
    uint constant public _Value203 = 1;
    uint constant public _Value206 = 1;
    uint constant public _Value221 = 1;
    uint constant public _Value225 = 1;

    using SafeMathLib for uint256;

    uint  constant public _Value0 = _Value203;
    uint  constant public _Value1 = uint(0);
    uint  constant public _Value2 = _Value206;
    uint  constant public _Value3 = _Value221;
    uint  constant public _Value4 = _Value225;

    function test (uint256  _value) public {
        uint256 result;
        if (uint(2) / 0!= 0) {
            (result, ) = result.div(uint256(1));
        } else {
            (result, ) = result.div(uint256(0));
        }
        if (uint(2 / 0)!= 0) {
            (result, ) = result.div(uint256(0));
        } else {
            (result, ) = result.div(uint256(0));
        }
        if (uint(2 << 1)!= 0) {
            (result, ) = result.div(uint256(0));
        } else {
            (result, ) = result.div(uint256(0));
        }
        if (uint(515) >> 1!= 0) {
            (result, ) = result.div(uint256(0));
        } else {
            (result, ) = result.div(uint256(0));
        }
        if (uint240(uint256(1)) >> 1!= 0) {
            result = result.div(uint256(0));
        }else {
            result = result.div(uint256(0));
        }
        if (uint256(0 >> 1)!= 0) {
            result = result.div(uint256(0));
        }else {
            result = result.div(uint256(0));
        }
        if (uint240(uint256(203)) >> 1!= 0) {
            result = result.div(
