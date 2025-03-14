pragma solidity ^0.8.0;
import "./IWrapper.sol";
interface IWrapperWithLib {
    function getWrapperData() external pure returns (bytes4);
    function getWrapperDataSize() external pure returns (bytes32);
    function setWrapperData(uint256) external;
    function setWrapperDataSize(bytes32) external;
}
