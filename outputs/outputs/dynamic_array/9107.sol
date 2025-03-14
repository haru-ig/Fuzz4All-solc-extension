pragma solidity ^0.8.0;
interface IEquatable {
    function compare(uint8 _value, bool _equal) external pure returns (bool);
}
