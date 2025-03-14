pragma solidity ^0.8.0;
contract Mutator {
  event Log(uint256);
  uint256 public totalValue;
  uint256 public base;
  uint256 public divination;
  function getDivination() public view returns (uint256) {
    return divination;
  }
  function getBase() public view returns (uint256) {
    return base;
  }
  function setFinalValue(uint256 divination, uint256 _base) public {
    base = base > uint256(1)? base : uint256(1);
    uint256 previousValue;
    do {
      previousValue = divination;
      divination = divination / base;
    } while ((divination == uint256(divination)), (previousValue == uint256(divination)));
    emit Log(divination);
  }
}
