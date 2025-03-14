pragma solidity ^0.8.0;
interface IArray {
    function getMin() external;
    function getMax() external;
    function sum() external;
    function set(uint _value) external;
    function push(uint _value) external;
    function pop() external;
    function length() external;
    function get() public view returns (uint);
    function sort() external;
    function has(uint index) public view returns (bool);
}
