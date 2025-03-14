pragma solidity ^0.8.0;
contract N{
function modify(address _addr, int _i) public { map[_addr] = _i; }
}

contract O{
  function modify(address _addr, int _i) public { m.modify(_addr, _i); }
  M m = M(0);



  function doSomething() public {
    modify(msg.sender, msg.value);
  }
}
