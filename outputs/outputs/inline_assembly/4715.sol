pragma solidity ^0.8.0;
contract mutator90 {
   uint256 private x;
    constructor() public {
      assembly { x := 22 }
      x = x + 1;
    }
    function mod() public view returns (uint256) {
      return x % 3;
    }
}
