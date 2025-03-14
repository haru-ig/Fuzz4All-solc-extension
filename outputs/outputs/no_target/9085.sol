pragma solidity ^0.8.0;
contract mutators_v10_v2_2_2 {
    function equivalent() public {}
    uint[10] array_v10v;
    uint _value;
   constructor(uint _value) public { array_v10v[_value-1]=8; _value=4; }
}
