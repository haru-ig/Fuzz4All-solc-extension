pragma solidity ^0.8.0;
contract oldY {
  uint256 x;
  uint256 public constant y = 60;
  function f() public returns (uint256) {
    return x;
  }
  function func() public {
    uint256 z;

    for (uint256 i; i < 10000; i++) {
      x++;
      z = z + x + y;
    }
  }
}
contract test {
    function test() public {
        newY y;
        oldY o;
        y.f();
        o.f();
        o.func();
    }
}
