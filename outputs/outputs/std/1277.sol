pragma solidity ^0.8.0;

pragma solidity ^0.8.0;
interface IArray {
function push(uint256 x) external;

function length() external view returns (uint256);

function get(uint256 i) external view returns (uint256);

function min() external view returns (uint256);

function max() external view returns (uint256);

function union(uint256[] memory x) external;

}
