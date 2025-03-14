pragma solidity ^0.8.0;
function myBigNumber(uint bigNumber) external pure returns (uint a) {
    return bigNumber < 0
      ? 0
        : bigNumber;
}
