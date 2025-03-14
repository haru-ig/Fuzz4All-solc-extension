pragma solidity ^0.8.0;
 contract Mutator16a {
 uint _counter;
 function testMethod(uint a, uint  b) public {
      if ((a-1)%2 == 0 || (a-1)%2 == 1) {
 _counter =  _counter + a;
     } else {
 _counter =  _counter + 1;
     }
 }
}



pragma solidity ^0.8.0;
contract Mutator15a {
 uint _counter;
 function testMethod(uint a, uint  b) public {
      if ((b-1)%2 == 0|| b%2 == 1) {
 _counter =  _counter + 2;
     }else {
 _counter =  _counter + 1;
     }
 }
}


pragma solidity ^0.8.0;
contract Mutator16a {
 uint _counter;
 function testMethod(uint a, uint  b) public {
      if ((b-1)%2 == 0 || b%2== 1) {
 _counter =  _counter + 2;
     } else {
 _counter =  _counter + 1;
     }
 }
}


pragma solidity ^0.8.0;
contract Mutator14a
