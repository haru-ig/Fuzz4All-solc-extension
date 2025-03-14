pragma solidity ^0.8.0;
interface Array {

function push(uint64 value) external;
function peek() external view returns (uint64);
function pop() external;
function shift() external;
function pushBack(uint64 value) external;
function at(uint idx) external view returns (uint64);
function length() external view returns (uint64);
function popFront() external;
function popBack() external;
function remove(uint idx) external;
function removeFront() external;
function removeBack() external;
function unshift(uint64 value) external;
function unshiftFront(uint64 value) external;
function unshiftBack(uint64 value) external;
}
