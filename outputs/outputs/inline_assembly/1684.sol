pragma solidity ^0.8.0;
contract MutatorS5 {
mapping(uint256 => bool) b;
 modifier onlyLastChange {
    b[old_b]++;
    _;
  }
  function mutate() public onlyLastChange {
    b[TWO]++;
    SET(TWO);
    b[b.length + THREE]++;
    b[b.length + TWO]++;
    b[b.length - THREE]++;
    b[ONE]++;
    b[ONE]++;
    b[ONE]++;
    b[ONE]++;
    b[ONE]++;
  }
  function modifyB() public onlyLastChange {
    SET(TWO);
    b[b.length + ONE]++;
    b[ONE]++;
     b[ONE]++;
     b[ONE]++;
     b[TWO]++;
  }
}
