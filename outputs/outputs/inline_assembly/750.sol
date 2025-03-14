pragma solidity ^0.8.0;
 contract Mutator17 {
 uint _counter;
 function testMethod(uint a, uint  b) public {
      if (b % 2 == 1 && a % 4 == 0) {
 _counter =  _counter + 1;
     } else {
 _counter =  _counter + 2;
     }
 }
}
const uint B = 1;
pragma solidity ^0.8.0;
 contract Mutator18 {
 uint _counter;
 function testMethod(uint a, uint  b) public {
      if (b % 2 == 1 && a % 4 == 0) {
 _counter =  _counter + 1 + (bytes1(_counter)? B : 1);
     } else {
 _counter =  _counter + 2;
     }
 }
}
