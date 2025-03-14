pragma solidity ^0.8.0;
interface IArray {
    function sum(uint256[] memory _input) external pure returns (uint256);
    function min(uint256[] memory _input) external pure returns (uint256);
    function max(uint256[] memory _input) external pure returns (uint256);
    function set(uint256[] storage _target, uint256 _index, uint256 _input) external;
    function get(uint256[] storage _target, uint256 _index) external view returns (uint256);
    function insert(uint256[] storage _target, uint256 _index, uint256 _input) external;
    function sort(uint256[] storage _target) external;
}
