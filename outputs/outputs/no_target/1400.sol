pragma solidity ^0.8.0;
contract Mutate_0038 {
    constructor(uint256 a) public {
        require(a >= 0, "Bad");
        a++;
        require(a > 0, "Bad");
    }
    function check(uint256 b) internal returns (bool) {
        return b > 0;
    }
}
library Check_0038 {
    function bad(uint256) public pure returns (bool) {
        return false;
    }
    function good(uint256) public pure returns (bool) {
        return true;
    }
    function good2(uint256 a, uint256 b) internal pure returns (bool) {
        return a > 0 && b >= 0;
    }
    function good3(uint256 a, uint256 b) internal pure returns (bool) {
        require(b < 0 || a > 0);
        return b >= 0;
    }
}
