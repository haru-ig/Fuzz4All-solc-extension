pragma solidity ^0.8.0;
uint32[4] public s;
contract MutatedF {
  function mutated() public {
    uint l=s.length;
    if(--s[l] == 999)
      emit Emitable();
  }
}
contract MutatedMutatedF {
  function mutated() public {
    s[s.length] = s[s.length] + 999;
  }
}
