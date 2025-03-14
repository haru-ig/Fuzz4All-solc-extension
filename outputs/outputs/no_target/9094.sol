pragma solidity ^0.8.0;
contract mutators_v10_v2 {
    function equivalent() public {}
    uint[10] array_v10;
   constructor(uint _value) public { array_v10[_value-1]=9; }
   uint operator+(uint _v) public { return array_v10[_v - 1+10]; }
}
