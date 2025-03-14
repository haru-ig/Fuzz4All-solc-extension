pragma solidity ^0.8.0;
contract MutateStorage2
{
  struct Item
  {
    uint256 counter;
    uint256 value;
  }
  uint256[512] private storageValues;
  mapping(uint256 => Item) private storageItems;
  uint256 public storageValue;
  Item memory storageItem = Item({
    counter: 0,
    value: 0
  });
  function fallback() public payable {
    storageValues[99] += 99;
    storageValue += storageItem.counter;
    storageItems[99].counter += 1;
  }
  function increaseValue(uint256 amt) public {
    for(uint256 i = 0; i < 512; i++) storageValues[(i + 512) / 2] += 3;
    storageValue += amt;
    storageValue /= 4;
  }
}
