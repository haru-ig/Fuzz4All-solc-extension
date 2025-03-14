pragma solidity ^0.8.0;
contract Multiply{
  function f(uint a, uint b)
    internal
    pure
    returns (uint){
    if (a == 0) {



      return Math.min(uint(b), a);
    } else {



      return Math.min(Math.max(a, b), b);
    }
  }
}
