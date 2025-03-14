pragma solidity ^0.8.0;
interface I {
    function key(uint256 i) external returns(uint8);
    function set(uint8 index, uint8 value) external;
}
