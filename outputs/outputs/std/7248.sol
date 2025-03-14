pragma solidity ^0.8.0;
contract Mutated {
  function mutate() public {
    contract C is Math {
    constructor() public {
    }

    function test(uint x) public pure returns(uint){
      x = 5 * x;
      return x;
    }
  }
}
