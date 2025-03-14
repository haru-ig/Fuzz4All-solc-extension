pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;


interface IEVM_contract {

  function getAddress() external pure returns (address);

  function getBytes32() external pure returns (bytes32);
}
