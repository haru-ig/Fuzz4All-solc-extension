pragma solidity ^0.8.0;
interface IArray{
    function findMin() external view returns(uint);
    function findMax() external view returns(uint);
    function sum() external view returns(uint);
    function set(uint, uint) external;
    function get(uint) external view returns(uint);
    function sort() external;
}
contract Array{
    uint public memorySize;
    uint[15] public arrayState;
}
