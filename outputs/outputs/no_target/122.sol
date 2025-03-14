pragma solidity ^0.8.0;
interface IGovernorshipToken {
    function change(uint256 newRate) external;
    function earn(address newEarned) external;
    function earn() external view returns(address);
}
