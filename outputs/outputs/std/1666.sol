pragma solidity ^0.8.0;
interface IArray {
    function length() external view returns (uint);
    function valueAt(uint _index) external view returns (uint);
    function elementAt(uint _index) external view returns (uint);
    function append(uint _value) external;
}
