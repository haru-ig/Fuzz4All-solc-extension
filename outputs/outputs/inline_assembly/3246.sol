pragma solidity ^0.8.0;
contract Mutate3 {
  uint public _contractValue;
  uint _anotherContractValue;
  function Change(uint amount) public pure returns (uint) {




    return _contractValue + amount;
  }
}

code ends
