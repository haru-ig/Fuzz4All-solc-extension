pragma solidity ^0.8.0;
contract SemanticMutationsExample{
    address payable smartContract1;
    address payable smartContract2;

    constructor(address payable _smart) public {
        smartContract1 = _smart;
    }

    function semanticMutatedExample() public payable {
        smartContract1.transfer(msg.value);
    }
}
