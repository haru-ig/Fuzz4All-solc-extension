pragma solidity ^0.8.0;
contract NoSematic2 {
    uint256 public x;
    function f() public {
        uint256 _x = _uint256_to_int256_or_error(x);
        if (0 <= _x) {
            x >>= 1;
        }
        else {
            x ^= 8;
        }
    }

    function _uint256_to_int256_or_error(uint256 u) internal pure returns (int256) {
        if (u >> 256 == 0) {
            return int256(u);
        }
        else {
            revert("");
        }
    }
}
