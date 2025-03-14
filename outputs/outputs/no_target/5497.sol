pragma solidity ^0.8.0;

contract A {
    function f(uint256 d) internal pure returns (uint256) {
        return 3 * d / 2;
    }
    function h() internal constant returns (uint256) {
        unchecked {
            return (3 * 2 / 2) + (2 * 2 / 2);
        }
    }
}
