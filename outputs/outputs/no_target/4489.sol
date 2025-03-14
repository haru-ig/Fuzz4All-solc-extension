pragma solidity ^0.8.0;
library SafeMath_ {
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return sub(a, b, "SafeMath: subtraction overflow");
    }
    function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        uint256 c = a - b;
        return c;
    }
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");
        return c;
    }
}
contract C {
    using SafeMath_ for uint256;
    function add(uint a, uint b) public pure returns (uint256) {
        unchecked {
            return a.add(b);
        }
    }
}
contract A {
    function add(uint a, uint b) public pure returns (uint256) {
        unchecked {
            return a.add(b);
        }
    }
}
