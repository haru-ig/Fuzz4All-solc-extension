pragma solidity ^0.8.0;
contract Test49Mutant {
    mapping (uint => uint) public y;
    uint a;
    uint x;
    constructor() public{
        a = 4;
    }
    function map2() public {
        y[3] = 42;
    }
    function write2() public {
        y[2] = 42;
    }
}
