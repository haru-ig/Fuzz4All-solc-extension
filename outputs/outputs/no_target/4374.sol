pragma solidity ^0.8.0;
contract K {
    uint256 x;
    modifier m_(uint256 y) {
        x = y;
      _;
    }
    function m(uint256 y) public {
      m_(y);
    }
}
contract R {
  uint256 x;
  modifier g() {
    x = 42;
    _;
  }
  function g_() public {
    g();
    assert(x == 42);
  }
}
