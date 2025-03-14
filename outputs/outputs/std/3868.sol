pragma solidity ^0.8.0;
interface IMemory {
    function readArray(address) public pure returns (uint256[]);
    function setArray(address, uint256[], uint256)  public;
}
