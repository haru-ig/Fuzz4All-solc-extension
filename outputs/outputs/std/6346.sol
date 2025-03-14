pragma solidity ^0.8.0;
contract Modification {
  uint256 public constant initialValue = 10;
  function modify() public {
    uint256 constant newFinalValue = 50;
    uint256 = newFinalValue / initialValue;
  }
}


pragma solidity ^0.8.0;
contract Mutate {
  uint256 private _finalValue;
  constructor () {
    _finalValue = 60;
  }
  function mutate() public {
    uint256 constant newFinalValue = _finalValue + 5;
    uint256 = newFinalValue / _finalValue;
  }
}
