pragma solidity ^0.8.0;
contract HighLevelCall {
    function nonMutantFunction() public pure { }
    function nonMutantFunctionFallback() public pure { }
    receive() external payable { }
}

pragma solidity ^0.8.0;
contract HighLevelCall {
    function nonMutantFunction() public pure { }
    function nonMutantFunctionFallback() public pure { }
    receive() public pure { }
}
