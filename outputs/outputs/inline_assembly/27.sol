pragma solidity ^0.8.0;
contract B {
    uint8 x;
    constructor() {

      A a = new A();
      B b = A(a);
      b.x = 1;
      assert(b.x == 1);
      b.x = 1;
      assert(b.x == 2);
      b.x = 1;
      assert(b.x == 2);
    }
}

contract C {
  struct B {
    uint x;
  }
  uint8 x;
  constructor() {
    B r0 = new B();
    B r1 = B(r0);
    r1.x = 2;
  }
}

contract D {
  uint8 x;
  constructor() {
    x = 1;
  }
  function set(uint8 y) public {
    x = y;
  }
}

pragma solidity ^0.8.0;
contract E {
  bool f;
  bool g;
  uint8 h;

  constructor() public {
    f = true;
    g = true;
    h = 5;
  }
}
