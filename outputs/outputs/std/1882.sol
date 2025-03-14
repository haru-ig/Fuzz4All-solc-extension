pragma solidity ^0.8.0;
interface ICarInterface {
    function ownerAddress() external view returns (address);
    function getMake() external view returns (string memory);
    function getYear() external view returns (uint256);
    function driveTorqueOutput() external return (uint256);
    function driveTorqueOutput(uint256) external;
    function speedRatio() external view returns (uint256);
    function speedRatio(uint256) external;
}
