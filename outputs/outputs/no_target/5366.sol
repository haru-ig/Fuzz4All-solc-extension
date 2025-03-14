pragma solidity ^0.8.0;
contract C {
    function c(uint8 x) public pure {
      assert(x == 1 || x == 0);
    }
}
contract B {
  function b(bytes x) public pure {
      c(x);
    }
}
contract A {
    function a(uint8 x) public pure {
      assert(x!= 0);
      b(x);
      a(x);
    }
}
contract C {
    function a(address _addr) public view {
        address _caller = msg.sender;
        uint8 x = 1;
        string memory s = "test";
        bytes memory b = bytes(s);
        a(_caller);
    }
}
