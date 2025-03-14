pragma solidity ^0.8.0;
contract Mutator17 {
 uint _counter;
 function testMethod(uint a, uint  b) public {
  if (b%2 == 0 && a % 2 == 1 && a % 4 == 1) {
 _counter = _counter + 1;
     } else {
 _counter = 0;
     }
 }
}
 contract Mutator18 {
 uint _counter;
 function testMethod(uint a, uint  b) public {
  if (b%2 == 1 && a % 2 == 0 && a % 4 == 1) {
 _counter = _counter + 1;
     } else {
 _counter = 0;
     }
 }
}
 contract Mutator212 {
 uint _counter;
 address _contractAddress_;
 constructor() {
     _contractAddress_ = address(new Mutator17());
 }
 function testMethod(uint a, uint  b) public onlyOwner {
 if (b%2 == 0 && a % 2 == 1 && a % 4 == 1) {
 _counter = _counter + 1;
 } else {
 _counter = 0;
 }
 }
 fallback() external payable {

 }
}
contract Mutator213 {
  uint value;
  constructor() payable {
    value = msg.value;
  }
  fallback() external payable {
    value = value * 2;
  }
}

```
