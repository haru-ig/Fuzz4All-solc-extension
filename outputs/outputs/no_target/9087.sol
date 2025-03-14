pragma solidity ^0.8.0;
contract Mutators_v10_v2_2 {
    uint50[] public array_v10;
   constructor(uint50 _value) public { array_v10[_value-1]=8; }
}
