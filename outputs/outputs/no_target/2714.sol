pragma solidity ^0.8.0;
contract previous_generation { uint public x; function previous_generation() public { x = 200000000000000; } }

pragma solidity ^0.8.0;
contract mutated_previous_generation { uint public x; function mutated_previous_generation(uint) public { x += uint(20000); } }
