pragma solidity ^0.8.0;
contract YulContract {
    function addValues4(uint256 a, uint256 b, uint256 c) internal pure returns (uint) {
        return (uint256(a) + uint256(b) + uint256(c));
    }
}
