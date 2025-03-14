pragma solidity ^0.8.0;
contract C {
  address payable to;
  string[] public counter;
  constructor(address payable payee) public {
    to = payee;
  }
  function checkCounter(uint idx) public view returns (string memory x) {
    return counter[idx];
  }
  function setCounter(uint idx, string memory x) public {
    counter[idx] = x;
  }
  event CounterUpdated(uint indexed id, string indexed oldvalue, string indexed newvalue);
  mapping(uint => string) public count;
  function mutatedCounter(uint idx, string memory x) public {
    string storage oldvalue = count[idx];
    uint idxCounter = 0;
    for (; x!= "" &&idxCounter!=0; ++idxCounter,x = x.slice(1)) {
      oldvalue.concat(x);
    }
    count[idx] = oldvalue;
    emit CounterUpdated(idx,oldvalue,x);
  }
}
contract testMutated{
  function test() public{
    string memory c= "";
    for(uint i=0; i<7; i++){
      string memory s="0x"+string(i%26) + "0x";
      string memory x= "";
    }
  }
}
