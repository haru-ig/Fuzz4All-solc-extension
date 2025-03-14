pragma solidity ^0.8.0;
interface IConvert {
    function fromString(string memory) external pure returns (uint256);
    function toString(uint256 _value) external pure returns (string memory);
}
