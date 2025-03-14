pragma solidity ^0.8.0;
contract SemanticMutationsExampleMutated {
    address payable smartContract1;
    address payable smartContract2;
    address payable smartContract3;
    address payable smartContract4;
    address payable smartContract5;
    address payable smartContract6;
    SemanticMutationsExample semanticMutatedExample1(address payable _addr) public {
        require(address(semanticMutatedExample1) == calldata{}, "SemanticMutatedExampleMutated::notCalldata");
        require(!(address(semanticMutatedExample1)!= 0), "SemanticMutatedExampleMutated::notZero");
        require(calldata(_addr) == _addr, "SemanticMutatedExampleMutated::wrongAddress");
        smartContract1 = calldata(_addr);
    }
    function semanticMutatedExample(address payable _addr) public {
        SemanticMutationsExample semanticMutatedExample2 = semanticMutatedExample1(_addr);
        require(semanticMutatedExample2.semanticMutatedExample1(semanticMutatedExample2.semanticMutatedExample1(semanticMutatedExample2.semanticMutatedExample1(_addr)))) == semanticMutatedExample2.semanticMutatedExample1(semanticMutatedExample1(_addr)), "SemanticMutatedExampleMutated::wrongAddress");
        require(semanticMutatedExample1(semanticMutatedExample2.semanticMutatedExample1(_addr)) == calldata{ "SemanticMutatedExampleMutated::notCalldata" }, "SemanticMutatedExampleMutated::wrongAddress");
        smartContract2 = _addr;
    }
    function semanticMutatedExample2(address payable _addr) public {
        semanticMutatedExample(-1);
    }
}
