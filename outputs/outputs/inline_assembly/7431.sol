pragma solidity ^0.8.0;
contract Equivalent_contract13 {
  uint constant constant1 = 2;
  uint constant constant2 = 100;
  uint x = 10;
  uint y = 18;

   function equal() public view returns(uint) {
      return x*20 + 20;
  }

  function equal2() public view returns(uint) {
      return constant1*((x+100)/2)+100+100;
  }

  function equal3() public view returns(uint) {
      return constant2*((x+100)/2)+100+100;
  }

  function greaterEqual() public view returns(uint) {
      return x*2+y;
  }

  function greaterEqual2() public view returns(uint) {
      return constant1*((x+100)/2)+100+100+100+100;
  }

  function lowerEqual() public view returns(uint) {
      return x*3-20;
  }

  function moreEqual() public view returns(uint) {
      return x*10+y*3;
  }

  function moreEqual3() public view returns(uint) {
      return constant2*((x+100)/2)+100+100+100+100;
  }

  function lessThan() public view returns(uint) {
      return x/20;
  }

  function lessThan2() public view returns(uint) {
      return constant2*((x+100)/2)+100+100+100+100;
  }

  function lessOrEqual() public view returns(uint) {
      return x*20-20;
  }

  function lessOrEqual2() public view returns(uint) {
      return constant1*((x+100)/2)+100+100+100+100;
  }

  function multiple3x() public view returns(uint) {
      return x*3;
  }

  function multiple4x() public view returns(uint) {
      return x*4;
  }

  function negative() public pure returns(uint) {
      return -(x);
  }

  function multiply(uint x) public pure returns(uint) {
      return x*3;
  }
}
contract Equivalent_contract14 {
function isEquivalent(uint _x1,uint _x2) public view returns (bool) {
       return _x1*2+_x2;
    }
}
contract Equivalent_contract15 {
function is
