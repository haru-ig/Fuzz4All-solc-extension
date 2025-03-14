pragma solidity ^0.8.0;
contract Test1 {
address a = 0x20000000000000000000000000000000000000001;
mapping(string => bytes) _storage_;
mapping(string => bytes32) _storage_with_mapping_;

function getValue() public view returns (uint256 b) {
return _storage_[a] & 0xFFFFFFFFFFFFFFFF;
}

}, Test2);
