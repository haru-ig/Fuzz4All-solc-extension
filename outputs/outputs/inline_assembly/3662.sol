pragma solidity ^0.8.0;
contract MutatesUsingYulWithSemimanualSemantics {
  MutatesUsingYulWithoutSemantics internal MutatesUsingYulWithoutSemantics;
  constructor(uint256 _g) {
    MutatesUsingYulWithoutSemantics = MutatesUsingYulWithoutSemantics(_g);
  }
  function changeGeneCount(uint256 _g) public {
    MutatesUsingYulWithoutSemantics.changeGeneCount(_g);
  }
  function getGeneCount() public view returns (uint256) {
    return MutatesUsingYulWithoutSemantics.getGeneCount();
  }
}
```
https:
