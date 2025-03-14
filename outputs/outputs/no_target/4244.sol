pragma solidity ^0.8.0;
contract P14 {
  uint256 x = 1 + 1;
}
contract P31 {
  uint256 x = 1 + 1;
}
contract P18 {
  uint[] x = new uint[](2);
}
contract P19 {
  uint256 x = 1 + 1;
}
contract P32 {
  bytes50 x = 'abc';
}
contract P127 {
  string public y;
}
contract P128 {
  string public y;
}
contract P129 {
  string public x1;
  string public y1;
}
contract P130 {
  string public x1;
  string public y1;
}
contract P34 {
  bytes50 y;
}
contract P283 {
  bytes50[][] x = new bytes50[1][];
}
contract P35 {
  bytes50[][] x = new mapping(uint256 => bytes50)[2][];
}
contract P291 {
  function f() public pure returns(bool) {
    return uint256(this);
  }
}
contract P292 {
  function g() public pure returns(uint256) {
    return uint256(this);
  }
}
contract P293 {
  function h() public pure returns(uint) {
    return uint256(this);
  }
}
contract P294 {
  function i() public pure returns(uint8) {
    return uint256(this);
  }
}
contract P309 {
  function[] x;
}
contract P370 {
  uint50 x;
}
