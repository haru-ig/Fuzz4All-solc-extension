pragma solidity ^0.8.0;
contract Continent {
  uint256[2] continentInfo;
  address[2] continentAddresses;
  mapping(address => uint256) accountBalances;
}
