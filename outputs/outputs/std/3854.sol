pragma solidity ^0.8.0;

interface IArray {
    function getMax() external view returns (uint256);
    function getMin() external view returns (uint256);
    function getSum() external returns (uint256);
    function set(uint256 _pos, uint256 _value) external;
    function setValue(uint256 _pos, uint256 _value) external;
    function setMax(uint256 maxValue) external;
    function setMin(uint256 minValue) external;
}
