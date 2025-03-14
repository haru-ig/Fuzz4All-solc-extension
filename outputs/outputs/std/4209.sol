pragma solidity ^0.8.0;
contract ArrayModifer {
  uint[2] private test = [120, 78];
  uint public constant SIZE = 5;
  uint private originalvalue;
  uint private newValue;
  uint private y;

  constructor() public {
    originalvalue = test[1];
    newValue = 11;
    y = 1;
  }

  function Modify(
    uint[SIZE] memory x,
    uint newValue
  ) public pure {
    x[y] *= newValue;
    y +=1;
  }
}
