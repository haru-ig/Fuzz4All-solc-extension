pragma solidity ^0.8.0;
interface IGovernorSHIPTOKEN {
    function change(uint newRate) external;
    function withdraw(address to, uint value) external;
    function governanceToken() external view returns (address);
}
