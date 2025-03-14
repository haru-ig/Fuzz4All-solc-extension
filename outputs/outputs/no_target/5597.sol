pragma solidity ^0.8.0;
contract O {
    uint constant x = 1;
    uint constant y = 2;
  contract Inner {
    uint constant z = 3;

    function h(uint a, uint b) internal pure returns (uint, uint){
        uint c;
        check(a - b + c);
        c = a % 78;
        c = b + c;
        return (a, c);
    }
    function check(uint v) internal pure {
    }
  }
  Inner inner = new Inner();
  function i() internal returns (uint) {
    uint  z ;
    uint  z ;
    return inner.g(3, 3) ;
  }
  function check(uint v) internal pure {
  }
}
