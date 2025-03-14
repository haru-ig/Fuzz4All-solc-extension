pragma solidity ^0.8.0;
contract SemanticMutationsExample2 {
    function semanticMutatedExample(address payable _addr) public {
        smartContract1 = _addr;
    }
    address payable smartContract1 = address(0);
}

pragma solidity ^0.8.0;
contract SemanticMutationsExample3 {
    function semanticMutatedExample(address payable _addr) public {
        smartContract1 = address(_addr);
    }
    address payable smartContract1;
}
