pragma solidity ^0.8.0;
contract modifiedB3 {
    function f0(address x) public {
      if (x==address(0)) throw;
    }
  }
