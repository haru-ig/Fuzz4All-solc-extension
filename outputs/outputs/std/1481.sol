pragma solidity ^0.8.0;
contract Mutated {

   Mutated mutated = Mutated(address(0));
   function mutate() public {

      mutated.mutate();
    }
}
