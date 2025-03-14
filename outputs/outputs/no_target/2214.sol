pragma solidity ^0.8.0;
contract Modifications2_SEM9_SEM20_SEM24_SEM35_SEM40 {
    function f(uint256 _x, uint256 _y) public pure {
        uint256 x = uint(_x + 1);
        uint256 y = _y;
        x = uint(x * 2 < y? x * 2 : y);
    }
}


contract Modifications2_SEM9_SEM20_SEM24_SEM35_SEM40_SEM61_SEM64 {
    function foo() public pure {
        uint256 s = 0.0;

        uint256 xs = uint(s + 0);

        uint256 zero_at_least_1_point_4 = 001.0;

        uint256 rounding_in_place_to_nearest_integer = 0.0101 * 1e18;

        uint256 x = uint(xs);

        uint256 pow_op = uint(2 ** uint256(x)) + x;
        /* The SemVer specification also allows for arithmetic to
