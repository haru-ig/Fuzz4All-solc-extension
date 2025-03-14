pragma solidity ^0.8.0;
contract NonMutated {}
contract Array {
    function min(uint256[] memory) internal view returns (uint256);
    function max(uint256[] memory) internal view returns (uint256);
    function sum(uint256[] memory) internal view returns (uint256);

    function get(uint256[] memory, uint256 idx) internal view returns (uint256);
    function set(uint256[] memory, uint256 idx, uint256 val) internal;
}
