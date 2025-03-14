pragma solidity ^0.8.0;
interface IDummy {
    function setB(uint) external;
     uint getB() external view;
    function getAddress(uint) external view returns (address);
}
