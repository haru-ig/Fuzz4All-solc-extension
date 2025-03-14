pragma solidity ^0.8.0;
contract mutators_v10_v2_2 {
    uint[10] array_v10v;
    uint[10] array_v10v2;
   constructor(uint _value) public {
      array_v10v [_value] = 0;
   }
   function equivalent() public { array_v10v [_value]=0; }
}
