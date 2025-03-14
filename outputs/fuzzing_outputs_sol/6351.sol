pragma solidity ^0.8.0;
contract MutantFallbackFunctionSemantic {
    uint a;
    constructor() { a = 1; }
    function mutantFallbackFunctionFallback() public pure {
        a;
    }
    function mutantFallbackFunction() public pure {}
    receive() external payable {}
}


pragma solidity ^0.8.0;






contract MutantFallbackFunctionTest {

    function mutantFallbackFunction() public pure {}


    receive() external payable {}


    function mutantFallbackFunctionTest() public returns (bool) {

        return mutantFallbackFunction();
    }


    function mutantFallbackFunctionTest2() public returns (bool) {

        return mutantFallbackFunctionFallback();
    }
}
