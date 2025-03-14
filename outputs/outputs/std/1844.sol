pragma solidity ^0.8.0;
interface MathInterface {
    function getAdd(uint256 x, uint256 y) external view returns (uint256);
    function getSub(uint256 x, uint256 y) external view returns (uint256);
    function getMult(uint256 x, uint256 y) external view returns (uint256);
    function getDiv(uint256 x, uint256 y) external view returns (uint256);
}
