pragma solidity ^0.8.0;
interface IWrapper {
    function getWrapperDataSize() external view returns (int);
    function getWrapperData() external view returns (int);
}
