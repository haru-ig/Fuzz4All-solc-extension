pragma solidity ^0.8.0;
library B2 {
    function intMul(uint a) internal pure returns (uint256) {
        return a * 2;
    }
    function uint2str(uint x) internal pure returns (string memory) {
        return uintStr(0, x);
    }
}
