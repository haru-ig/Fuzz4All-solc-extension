pragma solidity ^0.8.0;
contract Array {
    function sum(uint256[] memory arr) public pure returns (uint256) {
        return sumUnsignedBytes32x(unpackUnsignedBytes32x(arr));
    }
}
