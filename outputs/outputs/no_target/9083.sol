pragma solidity ^0.8.0;
contract mutators_v10_v2_2 {
    function equivalent() public {}
}

contract mutators_v8_v10 {
    function equivalent() public {}
    uint[] memory array_v8v;
    uint[] memory array_v10v;
    address[] memory array_v8v2;
    address[] memory array_v10v2;

    constructor(uint _value) public { array_v10v[_value]=0x7afde0f0b; }
}
contract mutators_v8_v10_v1 {
    function equivalent() public {}
    uint[3] memory array_v8v;
    uint[3] memory array_v10v;
    address[2] memory array_v8v2;
    address[2] memory array_v10v2;
    constructor(uint _value) public { array_v10v[_value]=0x617020af; }
}
