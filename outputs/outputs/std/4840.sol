pragma solidity ^0.8.0;
contract SemanticallyEquivalent {




  mapping (uint256=>uint256) public data;

  function increment(uint256 i) public {
    data[i] += 1;
  }

  function sum() public view returns (uint) {
    uint s = 0;
    for (uint j=0; j<data.length; j++) {
      s += data[j];
    }
    return s;
  }
  constructor() public {
    uint256[] memory i;
    i.push(5);
    i.push(6);
    i.push(8);
    i.push(9);
    for (j=0; j<i.length; j++) {
      data[j] = 1;
    }
  }
}
