pragma solidity ^0.8.0;
contract Memory {
  event EventName(uint number);
  uint public x = 23859552;
  function mul()public view returns(uint){
    return x * 20;
  }
}
