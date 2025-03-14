pragma solidity ^0.8.0;
contract Mutator19 {
 uint _counter ;
 function check(bool test, bool b) public returns (uint256) {
    if (b && test) {
    _counter = 1;
    return 4;
    }
    return 0;
  }
function testMethod(uint a, uint b, uint c) public returns (uint256) {
    if (b > 0) {return returncheck(a,b)};
    return 0;
  }
  function returncheck(uint256 x, uint256 y) public check(x == 7, true) returns (uint256) {
    if (y > 5) {
      _counter = _counter + 2;
    }
    return _counter % 2;
  }
}


pragma solidity ^0.8.0;
contract Mutator20 {
 uint _counter;
 function check(bool test, bool b) public returns (uint256) {
    if (b && test) {
    _counter = 1;
    return 2;
    }
    return 0;
  }
function testMethod(uint a, uint b, uint c) public returns (uint256) {
    if (b >= 1 && b <= 3) {return returncheck(a,b)};
    return 0;
  }
  function returncheck(uint256 x, uint256 y) public check(x == 7, true) returns (uint256) {
    if (y > 5) {
      _counter = _counter + 3;
    }
    return _counter % 3;
  }
}


pragma solidity ^0.8.0;
contract Mutator21 {
 uint _counter;
 function check(bool test, bool b) public returns (uint256) {
    if (b && test) {
    _counter = 1;
    return _counter;
    }
    return 0;
  }
function testMethod(uint a, uint b, uint c) public returns (uint256) {
    if (b >= 1 && b <= 3 ||
