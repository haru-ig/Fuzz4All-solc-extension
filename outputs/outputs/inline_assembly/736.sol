pragma solidity ^0.8.0;
contract Mutator14 {
 uint _counter;
 modifier test(uint value) {
  _counter = _counter + value;
  }
}

pragma solidity ^0.8.0;
contract Mutator15 {
 uint _counter;
 function testMethod(uint a, uint  b) public {
    if (b % 2 == 0 && a % 4 == 0 || b % 2 == 1 && a % 4 == 1) {
     _counter += value;
    }
 }
}
pragma solidity ^0.8.0;
contract Mutator16 {
 uint _counter;
 function testMethod(uint a, uint  b) public {
     uint value;
    assembly {
     value := sub(add(a, 2),b)
     }
    uint c = _counter + value;
    assembly {
     _counter := mload(0x3)
     }
 }
}
