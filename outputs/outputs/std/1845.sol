pragma solidity ^0.8.0;
interface MathInterface {
    function getAdd(int256 x, int256 y) external view returns (int256);
    function getSub(int256 x, int256 y) external view returns (int256);
    function getMult(int256 x, int256 y) external view returns (int256);
    function getDiv(int256 x, int256 y) external view returns (int256);
}
