pragma solidity ^0.8.0;
contract Multiprecision {
    uint256 constant private two = 2;
    function mul(uint256 a, uint256 b) internal pure returns (uint256 c) {
        c = a * b;
        require(c / a == b);
    }
}
