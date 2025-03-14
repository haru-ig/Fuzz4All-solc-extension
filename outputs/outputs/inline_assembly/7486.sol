pragma solidity ^0.8.0;



function computeSum(bytes memory _bytes0) internal pure returns (uint256) {
    uint256 sum = 0;
    for (uint256 i = 0; i < _bytes0.length; i++) {
        sum += uint8(_bytes0[i + 1]) * (97 + i);
    }
    return sum;
}
