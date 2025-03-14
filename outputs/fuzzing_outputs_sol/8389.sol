pragma solidity ^0.8.0;
contract SemanticSimilar385 {
  uint256 a;
  constructor() public {
    a = 0;
  }
  function getA() public pure returns(uint256) {
    return 14;
  }
  function setA(uint256 a2) public {
    a = a2;
  }
  fallback () external {
    address payable addr = payable(this);
    addr.transfer(40);
    uint256 b = a;
  }
  receive () external payable {
    address payable addr = payable(this);
    addr.transfer(45);
    uint256 c = a;
  }
}
contract SemanticSimilar390 {
  uint256 a;
  constructor() public {
    a = 0;
  }
  function getA() public pure returns(uint256) {
    return 14;
  }
  function setA(uint256 a2) public {
    a = a2;
  }
  fallback () external {
    address payable addr = payable(this);
    (uint256 b,) = addr.call{value:0}(0, "");
    (,uint256 c,) = addr.delegatecall{value:0}(0, new bytes(8));
    addr.transfer(40);
    (,uint256 d,) = addr.call{value:0}(0, "");
    (,int256 e,) = addr.delegatecall{value:0}(0, new bytes(8));
    addr.transfer(45);
  }
  receive () external payable {
    address payable addr = payable(this);
    (uint256 f,) = addr.call{value:0}(0, "");
    (,uint256 h,) = addr.delegatecall{value:0}(0, new bytes(8));
    addr.transfer(40);
    (,uint256 j,) = addr.call{value:0}(0, "");
    (,int256 l,) = addr.delegatecall{value:0}(0, new bytes(8));
    addr.transfer(45);
