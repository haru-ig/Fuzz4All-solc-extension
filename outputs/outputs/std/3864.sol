pragma solidity ^0.8.0;
interface Array is IConvert {
    function max(uint256 a, uint256 b) external pure returns(uint256);
    function min(uint256 a, uint256 b) external pure returns(uint256);
    function sum(uint256[] memory arr) external pure returns (uint256);
    function get(uint256[] memory arr, uint256 pos) external pure returns(uint256);
    function isSorted(uint256[] memory arr) external pure returns (bool);
}
