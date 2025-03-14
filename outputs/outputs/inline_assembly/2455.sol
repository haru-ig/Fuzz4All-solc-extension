pragma solidity ^0.8.0;
contract Mutator61
{
    uint public A;
    uint public C;
    Mutator61(uint _A, uint _C){
      A = _A;
      C = _C;
    }
    function add(uint _a, uint _b){
      A = A + _a;
      C = C + _b;
    }
    function add2(uint _a, uint _b, uint _c) public{
      A = A + _a;
      C = C + _b;
      C = C - _c;
    }
}
