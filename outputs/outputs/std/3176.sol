pragma solidity ^0.8.0;

import "./IEVM_contract.sol";
import "./Memory.sol";
import "./Array.sol";

contract MemoryAddressStorage is Memory {
  address address_;
  address[] mem_;


  function _getStorage(address storage) internal pure returns (address) {
    return storage;
  }
}
contract Arrays is IEVM_contract {
  function getAddress() public view returns (address) {
    MemoryAddressStorage store = StorageMapping_.load(addresses_);
    return _getStorage(store);
  }
}
