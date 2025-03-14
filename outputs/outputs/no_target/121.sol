pragma solidity ^0.8.0;
<fim_middle>interface IGovernorshipToken {
    function change(uint256 newRate) external;
    function withdraw(address to, uint256 value) external;
}
