pragma solidity ^0.8.0;

contract mutators_v10_v2 {
    function equivalent1() public {}
    uint[10] array_v10v;
    constructor(uint _value) public { array_v10v[_value]=0; }
}
contract mutators_v10_v2_2_2 {
    uint[10] array_v10v;
    constructor(uint[2] _value) public { array_v10v[0]=_value[0]; array_v10v[1]=_value[1]; }
    function equivalent2() public {}
}
contract mutators_v2 {
    function equivalent() public {}
    uint[10] array_v2v;
    constructor(uint _value) public { array_v2v[_value]=0; }
}
