pragma solidity ^0.8.0;
interface Caller {
    function toggle() external;
    function get() external view returns (uint);
}
