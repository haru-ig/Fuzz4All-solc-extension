pragma solidity ^0.8.0;

contract A {
  D d;
  A(uint x) {
    d.x = x;
  }







  function a() public {

  }
}

pragma solidity ^0.8.4;
pragma experimental ABIEncoderV2;
contract AB {
  D d;
  A(uint x) {
    d = new D();
  }
  function f() public {
    d.z = 2 * 3;
  }
}

pragma solidity ^0.8.0;
