pragma solidity ^0.8.0;
interface INonFairlyOptimizedContract {
    function get() external returns(uint);
    function getValue() public returns(uint);
    function set(uint) external valueChange(uint _newValue) view valueChange2(uint _newValue);
}
