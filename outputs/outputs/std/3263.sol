pragma solidity ^0.8.0;
contract Multiply{
  constructor() public {}
  function f(uint a,uint b)
    internal
    pure
    returns (uint){
    return a*b;
}

contract Test {}

contract Test2 {
  constructor() public Test() {}

}
