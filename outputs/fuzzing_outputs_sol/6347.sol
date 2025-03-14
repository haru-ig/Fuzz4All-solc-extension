pragma solidity ^0.8.0;
contract MutantMutantFallbackFunction {
    receive() external payable {
        revert("no fail");
    }
    fallback() external pure { }
}

pragma solidity ^0.8.0;
contract Caller {
    function callMutant(MutantFallbackFunction mutant) public {
        mutant.mutantFallbackFunction();
        mutant.mutantFallbackFunctionFallback();
    }
}
