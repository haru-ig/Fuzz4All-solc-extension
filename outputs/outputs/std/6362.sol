pragma solidity ^0.8.0;
contract Mutator {
  address[] public settableAddress;
  mapping (uint256=>address) public addrToAddr;
  mapping (address=>uint256) uintToIndex;
  mapping (uint256=>bytes32) public indexToAddr;
  constructor () {
    uintToIndex[0] = uintToIndex.length;
    addressToAddr[uintToIndex[uintToIndex.length]] = msg.sender;
    indexToAddr[uintToIndex[uintToIndex.length]] = "";
  }
  function addr(uint256 _index) public view returns (address){
    return addrToAddr[_index];
  }
  function addr(address _settableAddr) public view returns (uint256) {
    uint256 index = settableAddress.length;
    uint256 len = settableAddress.length;
    while (index % 4!= 0 && index < len) {
      index++;
    }
    settableAddress.push(_settableAddr);
    indexToAddr[index] = _settableAddr;
    return index;
  }
}
