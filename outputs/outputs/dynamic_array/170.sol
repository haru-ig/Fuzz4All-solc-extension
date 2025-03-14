pragma solidity ^0.8.0;
  contract C3 {
    address public x;
    constructor(address y) public {
        x = y;
        x();
    }
    function x() public {
        x = x();
    }
}
