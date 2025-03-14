pragma solidity ^0.8.0;
contract Mutate5 {
  uint public _amount;
  function Mutate(address x) public returns (bool){
    if (msg.sender == x) _amount+=10;
    return true;
  }
}

contract Mutate6 {
  uint public _amount;
  function Mutate(address x) public returns (bool) {
    if (msg.sender == x) _amount+=10;
    if(_amount > 8000){
      return true;
    }
    else{
      revert("Incorrect");
    }
  }
}
contract Mutate7 {
function Mutate(address x) public returns (bool) {
    if(msg.sender == x) _amount+=10;
    if (_amount == 8000) {
      return true;
    }
    else {
      revert("Incorrect");
    }
  }
}
