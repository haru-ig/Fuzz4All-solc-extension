pragma solidity ^0.8.0;
contract Mutator {
  function modifier1() public pure { _; }
  function modifier2(uint _x) public pure { _; }
  function mutate() modifier1{_;}
}
