pragma solidity ^0.8.0;
contract SimpleStorage {
function publicStorage() public pure {}
function onlyInternalStorage() internal pure {}
function externalStorage() external pure {}
}
