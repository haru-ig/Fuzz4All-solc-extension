pragma solidity ^0.8.0;
contract Mutated {
    uint256 public a;
    uint256 public immutable aMut = 0;
    constructor () public { a = 0; }
     function modifiedFunction() public pure { a = 1; uint256 original = a; a = 2; aMut = original; }
    function finalFunction() public pure returns(uint256) { return a; }
}<jupyter_output>
