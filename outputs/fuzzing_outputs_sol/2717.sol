pragma solidity ^0.8.0;
interface SimpleStorage {
    function setValue(uint x) external;
    uint getValue() external view returns (uint);
    event SetValue(uint indexed _value);
}
