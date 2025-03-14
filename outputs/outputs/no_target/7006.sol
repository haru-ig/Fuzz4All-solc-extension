pragma solidity ^0.8.0;
library Test {
    function func() public pure returns (uint256) {
        uint256 num = uint256(long256(uint256(-123)));
        return num;
    }
}
