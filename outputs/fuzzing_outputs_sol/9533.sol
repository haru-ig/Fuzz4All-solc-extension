pragma solidity ^0.8.0;
contract Mutator {
  address mut x;

  function foo() public pure {


    x.call{value: 1 ether}('');
  }
}

contract Fallback {
  receive() external payable {}
}
