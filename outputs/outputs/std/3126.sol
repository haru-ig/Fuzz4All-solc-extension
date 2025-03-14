pragma solidity ^0.8.0;
contract BasicMathOperations {
  uint public w = 0;
  uint public x = 0;
  uint public y = 0;
  uint public z;
  function set(uint value, uint other)
  public{
    w = value;
    x = other;
    y = x + x;
  }
  function add() public {
    set(z = 1000000000, 0);
    set(0, z);
  }
  function _assert(uint c, string memory s, uint x, uint y) private pure
    returns(bool c) {
    if (x!= y) {
      c = false;
      emit EventName(c, y);
      emit Error(c, s);
    }
  }
  function _eq(uint x, uint y) private view returns(bool){
    return x == y;
  }
  function _leq(uint x, uint y) private view returns(bool){
    return x <= y;
  }
  function _geq(uint x, uint y) private view returns(bool){
    return x >= y;
  }
  function _add(uint x, uint y) private view returns(bool){
    return x + y == x + y.add(1);
  }
  function _sub(uint x, uint y) private view returns(bool){
    return x - y == x.sub(1).sub(y);
  }
  function _mul(uint x, uint y) private view returns(bool){
    return x * y == (x * y).mul(x);
  }
  function _div(uint x, uint y) private view returns(bool){
    return x / y == x / y.div(x);
  }
}
