pragma solidity ^0.8.0;
contract P25 {
  uint256 x = 1 + 1;
}
contract P26 {
  uint16 x = (1 << 16) + 0;
}
contract P27 {
  uint y = 0;
  uint x;

  function increment() public returns (uint256) {
    y = y + (x *= 34655);
    return y;
  }
}
contract P28 {
  mapping(address => uint) balances;
  uint public totalSupply;
  function add(uint a, uint b) public { balances[msg.sender] += a; balances[a] += b;  totalSupply += b; }
  uint public balance(address a) public { return balances[a]; }
}
contract P29 {
  contract G { uint public x; }
  mapping(address => G) public gens;
  function() public {
    gens[address(0x0)].x = 42;

  }
}
contract P30 {
  uint public x;
  function() public {
    x = 5;

  }
}
contract P31 {
  uint public x;
  modifier mymod() { x = 9; _; }
  function() public mymod() {}
  function() public { revert(); }
}
contract P32 {
  constructor () public {   }
  uint public x;
  modifier mymod() { x = 9; _; }
  function() public mymod() { revert(); }
}
contract P33 {
  uint public x;
  modifier mymod() { x = 9; _; }
  function() public mymod { revert(); }
}
contract P34 {
  uint public x;
  modifier mymod() { x = 9; _; }
  function() public mymod() { revert(); }
}
contract P35 {
  uint public x;
  modifier mymod() { x = 9; _; }
  function foo() public mymod() { revert(); }
}
