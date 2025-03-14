pragma solidity ^0.8.0;
contract Caller {
  address public contractAddr;

  function f() public payable {
    uint x;
    assembly {
      let i := 42
      x := i
    }

    (contractAddr) = x;
  }
}
