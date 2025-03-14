pragma solidity ^0.8.0;
contract SemanticMutantFallbackFunction {
    uint a;
    constructor() { a = 1; }
    function semanticMutantFallbackFunction() public pure { }
    function semanticMutantFallbackFunctionFallback() public payable {
        a;
    }
}

contract MutantSender {
    MutantFallbackFunction  public nonMutantInstance;
    MutantFallbackFunction  public mutantInstance;
    constructor() { }
    receive() external payable {
        (nonMutantInstance).mutantFallbackFunction();
        (nonMutantInstance).mutantFallbackFunctionFallback();
        (mutantInstance).mutantFallbackFunction();
        (mutantInstance).mutantFallbackFunctionFallback();
    }
}

contract SemanticMutantSender {
    MutantFallbackFunction  public nonMutantInstance;
    MutantFallbackFunction  public mutantInstance;
    constructor() { }
    receive() external payable {
        (nonMutantInstance).semanticMutantFallbackFunction();
        (nonMutantInstance).semanticMutantFallbackFunctionFallback();
        (mutantInstance).semanticMutantFallbackFunction();
        (mutantInstance).semanticMutantFallbackFunctionFallback();
    }
}
contract MutantExample {


    function sendEther() public {
        MutantSender.MutantSenderInstance(this).sendEther();
    }
    function testMutation() public {
        MutantSender.SemanticMutantSenderInstance(this).sendEther();
    }
}
