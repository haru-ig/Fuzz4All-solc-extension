pragma solidity ^0.8.0;
contract BetterProgram2 {
  bytes32 constant X = '100';
  bytes32 x;
  constructor() public {
   x = X;
  }
  modifier onlyIfExecuted {
    executed = true;
    _;
  }
  uint public number;
  mapping(uint => bool) public result;
  constructor(uint a) public {number = a; result[a] = false; }
  function doSomething() internal update(number, true);
  modifier doSomething(uint x, uint) internal
  {
    if (!result[x])
       result[x] = true;
          _;
  }
  function doSomethingElse(uint i, bool x, uint f) public
  {
    i.doSomething(x, f);
  }
  function update(uint x, bool x2) public onlyIfExecuted doSomething(x, x2);
  function doSomethingElse2(uint x) public
  {
    doSomething2(x);
  }
}
