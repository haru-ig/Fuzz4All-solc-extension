pragma solidity ^0.8.0;
contract Mutator44 {
    uint public A;
    constructor(uint _A){
      A = _A;
    }
    function test() public {
      A = A + A;
    }
}
