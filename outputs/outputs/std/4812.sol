pragma solidity ^0.8.0;
contract H {
  bytes32 public x;
  bytes32 public y;
  function h() public {}
  function test2() public pure {}
}
contract H {
  bytes32 constant public x = keccak256('x bytes32');
  bytes32 constant public y = keccak256('y bytes32');
  function h() public {}
  function test2() public pure {}
}

contract H_with_constructor {
  H h;
  uint public x;
  uint public y;
  function set(uint x, uint y) public {
    require(x > 0, 'x == 0');
    require(y > 0, 'y == 0');
    h.set(x, y);
  }
  constructor () {
    x = 0;
    y = 0;
  }
  function h() public {
    x = y;
    y = x + 1;
  }
  function test2() public pure {
    h.test2();
    h.h();
  }
}

contract H {
  function set(uint x, uint y) public pure {
    assert(x > 0);
    assert(y > 0);
  }
  function h() public pure {
    assert(y == x + 1);
  }
  function test2() public pure {
    assert(h() == 2);
  }
}
