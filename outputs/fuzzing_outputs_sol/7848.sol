pragma solidity ^0.8.0;
contract SemanticEquivalence {
    address payable payee;
    constructor () { }
    receive () external payable { payee.transfer(msg.value); }
}
