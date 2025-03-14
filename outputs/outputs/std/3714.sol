pragma solidity ^0.8.0;
interface MutatedMath {
    function sqrt(uint256 x) public pure returns (uint256);
    function mod(uint256 x, uint256 y) public pure returns (uint256);
}
