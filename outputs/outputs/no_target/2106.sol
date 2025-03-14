pragma solidity ^0.8.0;
contract Functions {
  int public i;
  uint public j;
  function Functions(int _i, uint _j) public {
    i = _i;
    j = _j;
  }
  function f() public {
    i = i + 1;
    j = j + 1;
    i = i.add(1);
    j = j.add(1);
    i = i.sub(1);
    j = j.sub(1);
    i = (i + 1).sub(1);
    j = (j + 1).sub(1);
    i = i.mul(i);
    j = j.mul(j);
    i = (i + 1).div(j).add(1);
    j = (j + 1).div(i);
  }
}
