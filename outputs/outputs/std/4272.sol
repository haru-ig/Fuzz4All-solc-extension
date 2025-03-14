pragma solidity ^0.8.0;
interface IArray {
    function mod(uint256 idx, uint256 modulus) external;
}
library Array {
    function mod(uint256 idx, uint256 modulus) internal pure returns (uint256) {
        require(idx >= 0);
        require(idx < modulus);
        uint256 result = 0;
        for(bytes memory arr; idx > 0; --idx) {
            result = uint256(uint8(arr[idx])) + (result * 256);
        }
        return result % modulus;
    }
