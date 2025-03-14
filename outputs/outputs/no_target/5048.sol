pragma solidity ^0.8.0;
contract C38_bug404933976319 {
  uint256 public d;
  uint256 public i;



  function c() external {
    unchecked {
      d=1;
      i =2;
    }
    unchecked {

      assert(0);
    }
    unchecked {
      uint88 a = -2 ** 48;
      unchecked {
        a = i;
      }
      assert(d == 1);
    }
    unchecked {
      i = 1;
    }
  }
}

pragma solidity ^0.8.0;
contract C38_bug404933976319 {
  bytes32 public constant _c = 0xf3b9aca90000000000000000000000000000000000000000000000000000000;
  function b() public pure returns(bytes32) { return _c; }
}

pragma solidity ^0.8.0;
contract C0 {
  uint88 public y;
  uint88 internal log4;
  event log3( uint88 z );
  function a() public { log3(log4); }
}
contract D1 is C0 {

}
contract C1 is C0 {
  uint internal log4;
  event log3( uint88 z );
  function b() public { log3(log4); }
  function a() public { log3(log4); a; }
  function c() public { i=x;  a;  log3(y);  }
  uint x=2 ** 113;
}
contract D2 is C1 {
  uint internal z;
  function a() public { log3(z); }
  function b() public { log3(z); }
  function c() public { x=2 ** 4094; y=18446744073709551615; }
  uint x=2 ** 9;
}
contract C2
