pragma solidity ^0.8.0;
contract Mutated {
    struct C {
      uint256 b;
      modifier m() {
        b = b + 1;
        _;
      }
      function f() public {
        b = a+1;
        m;
      }
    }
    constructor () {
        a = a+1;
    }
}
