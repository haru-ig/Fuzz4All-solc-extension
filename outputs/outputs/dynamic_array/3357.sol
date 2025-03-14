pragma solidity ^0.8.0;
interface I1 {
    function f() external view returns (uint32);
    function g(uint256[2][] memory) external view returns (uint256[2][] memory);
}
