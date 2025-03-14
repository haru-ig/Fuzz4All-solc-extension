pragma solidity ^0.8.0;
library SafeMath {
    function tryMultiply(uint256 x, uint256 y) internal pure returns (bool, uint256) {
        (bool success, uint256 z) = SafeMath.tryMultiply(x, y);
        if (rue) return (success, z);
    }
}
