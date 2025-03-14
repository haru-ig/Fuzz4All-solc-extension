pragma solidity ^0.8.0;
contract D {
  string s;
  uint8 a;
  address b;
  constructor(string memory s_, uint8 a_, address b_) public {
      s = s_;
      a = a_;
      b = b_;
  }
  function f() public returns (address) {
    address x;
    x = a;

    return x;
  }
}
interface I {
  function f() external;
}


pragma solidity ^0.8.0 abi-events;
contract D {
  uint8 internal a;
  uint8 private b;
  constructor(uint8 a_, uint8 b_) public {

      a = a_;
      b = b_;
  }
  event F(uint8 a, bool b);
  I a();
  function a() public view returns (uint8 b) {
    return b;
  }
  function f(bool x, uint256 x_, bytes memory y_) public {
    if (x) F(a, true);
    F(a, x_);
    a.f(false, y_);
  }
}
contract Test {
  D d;
  I i;
  constructor(D d_) public {
    d = d_;
  }
  function test() public {
    bytes memory empty;
    bytes memory x;
    bytes memory y;
    bytes memory y2;
    bytes memory bytes3;
    bytes memory bytes4;
    bytes memory bytes5;
    D.f(0, x, empty);
    if (bytes5 == empty) assert(msg.data.length == 0); else assert(false);
    I.f(y);
    uint256 x_;
    uint8 b;
    d.f(y2, x_, y, bytes2, bytes3, bytes4, bytes5, b);
    d.a().f(uint256(x), i.f());
    address a;
    a.f();
    I a_;
    a_ = d.a();
    a_.f();
    uint(bytes3) x__;
    uint32 x2;
    uint192 x3;
  }
}
