pragma solidity ^0.8.0;
interface IConvert {
    function toHexa(uint256 _num) external pure returns (string memory);
    function toUnsigned(string memory _str) external pure returns (uint256);
}
