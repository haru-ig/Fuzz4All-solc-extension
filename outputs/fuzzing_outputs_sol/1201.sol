pragma solidity ^0.8.0;
contract SemanticsEquivalence8 {
    struct Data { uint x; }
    Data internal data1;
    constructor() {}
    function f1() public returns (uint) { return data1.x; }
    function f2(Data memory d) public pure returns (uint) { return d.x; }
    function run() public { require(this == dataMap[f1()]); }
    function receive() external payable { data1.x = msg.value; }
}
