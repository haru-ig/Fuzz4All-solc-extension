pragma solidity ^0.8.0;
contract m104a {
    event M102();
    uint public a;
    mapping(address => uint) balances;
    constructor(uint _a) { balances[msg.sender] = _a; balances[_a] = 1; a = _a; }
}
