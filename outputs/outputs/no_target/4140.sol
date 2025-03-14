pragma solidity ^0.8.0;
contract P5{
  uint internal p5;
  function g(uint x) internal { p5 = uint256(p5) + uint256(x); }
}
contract P6{
  uint internal p6;
  function h(uint x) internal { p6 = uint256(p6) - uint256(x); }
}
contract P7{
  uint public p7;
  function h1(uint x) internal returns (uint) { return uint256(p7); }
}
contract P8{
  uint internal p8;
  function g(uint x) internal returns (uint) { return uint256(p8); }
}
contract P9{
  uint public p9;
  uint public p90;
  function h(uint x) internal returns (uint) { return uint256(p90); }
  function h2(uint x) internal { p9 = uint256(p9)+=uint256(x); }
  function h3(uint x) public nonpayable returns (uint) { return uint256(p90) + x; }
}
contract P10{
  uint public p10;
  uint public p100;
  function h(uint x) internal returns (uint) { return uint256(p100); }
  function h2(uint x) internal { p10 = uint256(p10)+=uint256(x); }
  function g(uint x) public { x += p10; }
  function h3(uint x) public nonpayable returns (uint) { return uint256(p100) + x; }
}
