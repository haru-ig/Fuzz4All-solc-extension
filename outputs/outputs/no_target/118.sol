pragma solidity ^0.8.0;
interface IGovernorshipToken {
    function change(uint256 newRate) external;
    function withdraw(address to, uint256 value) external;
    function governanceToken() external view returns (address);
}
