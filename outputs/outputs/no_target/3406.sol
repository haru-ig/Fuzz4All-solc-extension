pragma solidity ^0.8.0;
contract m03 {
    uint256 constant public M = 0x11;
    uint256 constant public N = 0xabcdef;
    uint256 constant public S = 0xabcdef;
    uint256 constant public T = 0xabcdef;
    address constant public SENDER = msg.sender;
    address public PAYER;
    event m1(uint256 param);
    constructor(address s) public { PAYER = s; }
    function call() public payable { msg.sender.transfer(M); }
    event m2(uint256 _param1);
    function m3(uint a) public returns (uint) {
      SENDER.transfer(N);
      m1(a);
      return D0;
    }
    function m4(uint a) public view, modifier m5(uint z) {
      SENDER.transfer(N);
      m1(a);
      return a;
    }
    function m6(uint a) public view, modifier m7(uint z) {
      SENDER.transfer(N);
      m1(a);
      assert(a == D0);
      xAssert(z == 42);
    }
    function m8(uint x, uint y, modifier m9(uint z)) public {
      SENDER.transfer(N);
      m1(x);
      assert(x == D0);
      m1(y);
      assert(y == D0);
      m5(z);
      assert(z == 42);
    }
    function m10(uint x) public {
      SENDER.transfer(N);
      m1(x);
      assert(x == a);
      assert(x == D0);
    }
    function m11() public {
      SENDER.transfer(N);
    }
    function m12(uint x) public {
      SENDER.transfer(N);
      m1(x);
      xAssert(x == 648);
    }
    function m13(uint a, uint b) public {
        m1(a);
        m1(b);
        xAssert(a < 8);
    }
    function m14(uint a, uint b, uint c) public {
        uint const x = a + 8;
        xAssert(b == x);
    }
    function m15() public {
       xAssert(D0 == a);
       xAssert(D0 == 31);
    }
    function m16(uint a) public payable {
       m12(a);
       xAssert(M == 0x11);
       xAssert(sender == PAYER);
    }
    function m17(uint a, uint b) public payable
