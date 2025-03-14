pragma solidity ^0.8.0;
contract MutateStorageAgain
{
  uint256[256] private storageValues;
  uint256 public storageValue;
  address public contract1;
  address public contract2;
  function fallback() public payable {
    storageValue += 10;
    contract1.call{value: address(this).balance}(abi.encode(address(this), contract2, storageValue, 2021));
  }
  function increaseValue(uint256 amt) public {
    for (uint256 i=0; i < 256; i++) storageValues[i] += 1;
    storageValue += amt;
  }
  function increaseValue2() public {
    for (uint256 i=0; i < 256; i += 1) storageValues[(i * 256) + 2] += 1;
    storageValue += amt;
  }
}
