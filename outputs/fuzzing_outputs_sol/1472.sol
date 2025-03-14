pragma solidity ^0.8.0;
contract SemanticMutationsExample2 {
    function semanticMutatedExample(address payable _addr) public {
        smartContract2 = _addr;
        smartContract1 = smartContract2;
    }
    address payable smartContract1;
    address payable smartContract2;
}

pragma solidity ^0.8.0;
contract SemanticMutationsExample3 {
    address payable smartContract1;
    address payable smartContract2 = payable(new SemanticMutationsExample2());

    modifier semanticMutatedExampleCaller(address payable _addr) {
        smartContract1 = _addr;
        _;
    }
}
