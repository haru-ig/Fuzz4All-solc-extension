pragma solidity ^0.8.0;

contract Mutator18 {
  uint public num;

  function test(uint a, uint  b) public {
    num = a + b;
  }
}

pragma solidity ^0.8.0;
contract Mutator18 {
  uint public num;

  function test(uint a, uint  b) public {
    if (b < 10) {
        uint256 j = HelloTest.test();
      num = j - a;
    }
  }
}
