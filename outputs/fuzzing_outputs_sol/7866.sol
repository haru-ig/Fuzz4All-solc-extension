pragma solidity ^0.8.0;
contract EquivalentFallbackExample4 {
    receive() external payable returns (uint256 a, uint256 b) { }
    receive(uint8 i) external payable {}
}
