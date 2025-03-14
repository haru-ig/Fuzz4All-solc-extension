pragma solidity ^0.8.0;

library HelperLibrary {
    function safeSub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a);
        uint256 c = a - b;
        return c;
    }
}
