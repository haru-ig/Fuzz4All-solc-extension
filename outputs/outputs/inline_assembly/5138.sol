pragma solidity ^0.8.0;

contract C {
  address payable to;
  uint public counter = 10;
  constructor(address payable payee) public {
    to = payee;
  }
  function checkCounter() public view returns (uint) {
    return counter;
  }
  function mutatedCounter() public returns (uint) {
    counter += 2;
    return counter;
  }
}


library InlineAssemblyUtils {
  bytes32 public constant STR = "Yul";
  Assembly {
    private uint256 counter = 5;
    private bool x = false;

    function test() public {
      counter++;
      counter += 2;
      if (x) {
        let _y = 9;
        x = false;
        return counter;
      } else {
        let _y = 8;
        return 3;
      }
    }
  }

  function checkCounter() public view returns (uint) {
    return counter;
  }

  function mutatedCounter() public returns (uint) {
    counter = 1;
    counter += 3;
    return 5;
  }
}
