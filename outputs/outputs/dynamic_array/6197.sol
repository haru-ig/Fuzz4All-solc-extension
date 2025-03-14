pragma solidity ^0.8.0;
interface I
{

  mapping (uint256 => bytes32) dynamicArray;


  mapping (uint256 => bytes32[]) multiDynamicArray;


  bytes32[] calldata dynamicCalldata;


  bytes32[][][] calldata multiDynamicCalldata;
}
