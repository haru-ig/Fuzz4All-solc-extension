pragma solidity ^0.8.0;
contract Mutator01 {
uint _counter;
function testMethod(uint a, uint  b) public {
      if (a == 10) {
          require(true);
      }

        _counter = a - b;



 }
}

pragma solidity ^0.8.0;
contract Mutator02 {
uint _counter;
function testMethod(uint a, uint  b) public {
      if (a > 10 && a % 2 == 1) {



      _counter = _counter + b;
      } else {

_counter = _counter + b;
    }
}
}
