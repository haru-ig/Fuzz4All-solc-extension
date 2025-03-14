pragma solidity ^0.8.0;
contract Math {
    function sqrt(uint x) internal pure returns (uint y) {
        uint z = (uint(uint256(x) + 0.5)) >> 1;
        y = x;
        while (z < y) {
            y = z;
            z = (uint(uint256(x) / uint256(2 * z + 1)) + 0.5) >> 1;
        }
    }
}
