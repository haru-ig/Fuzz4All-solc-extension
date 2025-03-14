pragma solidity ^0.8.0;
contract SemanticalEquiv
{
    function f_uint_max_uint() external pure returns (uint160 x0) {
        return uint160(uint256(-2) * 2 ** 150) + 1;
    }
    function f_uint_max_fixed16() public pure returns (int160 x0) {
        return int160(uint256(-2) * 2 ** 150) + 1;
    }
    function f_uint_max_fixed32() public pure returns (int32 x0) {
        return int32(uint256(-2) * 2 ** 310);
    }
    function u2w_int0() public pure returns (uint256 y_a) {
        return (1 * new int160(-INT160_MAX));
    }
    function w2u_uint0() public pure returns (uint256 z_a) {
        return (1 * new uint160(UINT160_MAX));
    }
}
