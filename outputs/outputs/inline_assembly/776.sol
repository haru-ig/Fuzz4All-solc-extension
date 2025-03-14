pragma solidity ^0.8.0;
contract Mutator20 {
uint _counter;
uint _a;
uint _b;
function testMethod() public {
     _a = 5;
     _b = 7;

if (_a % 2 == 0) {
  _counter = _a + _b - 6;
} else {
  _counter = _a - _b;
}

      _counter = 5 * 7 - _counter;

}
}
