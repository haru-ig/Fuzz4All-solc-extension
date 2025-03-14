pragma solidity ^0.8.0;
contract G {
  struct D {
  uint a;
  }
  function f() public {
    D memory x;
    x.a = 777;
    uint x_size=get_size(x);
    assembly {
      mstore(0, 1)
    }
  }
  function get_size(D memory x) internal pure returns(uint){
    uint size=8;
  }
}
