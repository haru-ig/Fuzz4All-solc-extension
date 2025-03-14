pragma solidity ^0.8.0;
contract D {
mapping (uint => uint) public t;
constructor() public {
t.push(t[1]); }
function() public pure {
t[1]++; }
}

pragma solidity ^0.8.0;
contract D {
constructor(uint a) public { }
uint public a;
function() public pure {
a++ * a + a++; }
}
