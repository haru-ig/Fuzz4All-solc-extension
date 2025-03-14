pragma solidity ^0.8.0;
interface IArray {
    function append(uint _value) external;
    function set(uint _index, uint _value) external;
    function getValue(uint _index) external view returns (uint);
}
