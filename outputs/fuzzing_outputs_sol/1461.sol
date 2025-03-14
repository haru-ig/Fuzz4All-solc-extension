pragma solidity ^0.8.0;
contract SemanticMutatedExample {
    uint public counter;
    address payable smartContract1;
    address payable smartContract2;
    address payable smartContract3;
    address payable smartContract4;
    address payable smartContract5;
    address payable smartContract6;
    mapping (uint => string) public tokenIdNames;
    function semanticMutatedExample2(address payable _addr) public {
        tokenIdNames[counter] = _addr.toString();
        counter++;
    }
}
