pragma solidity ^0.8.0;
contract P2 {
   uint constant myConstField = 60;
   uint32 public iv;
    constructor() public {
      iv = 0;
    }

    function P2() public {
      iv = 0;
    }

    function doSomething() public view returns (uint8) {
      return iv*myConstField;
    }
}
