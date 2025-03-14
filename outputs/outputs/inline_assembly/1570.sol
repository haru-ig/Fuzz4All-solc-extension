pragma solidity ^0.8.0;
contract EquivalentOptimized {
uint256 x;
uint256 t;
constructor() public {
    x = 32;
    t = 1;
}

function mutate (uint256 _h) public {
  t+=_h;
  x=x+1;
}

function increment() public {
    x = x+t;
}
}
