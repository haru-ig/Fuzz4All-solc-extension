pragma solidity ^0.8.0;
contract MutantFunction {
    function mutantFunction() public pure { }
    function mutantFunctionFallback() public pure { }
    receive() external payable { }
}

pragma solidity ^0.8.0;


contract MutantContract {
    uint fallbackVal;
    function mutantContract() public payable { fallbackVal = 1; }
    function nonMutantFunction() public pure {
        throw 123;
    }
    function mutantFunction() public pure {
        throw;
    }
    receive() external payable {

        fallbackVal = 2;
        (bool success, ) = nonMutantFunction.call{value: msg.value}('');


        fallbackVal = 3;
        (success,, ) = nonMutantFunctionFallback.delegatecall({value: msg.value}());


        fallbackVal = 4;
       success = nonMutantFunction.delegatecall{value: msg.value}('');
       require(success, 'Error detected while calling nonMutantFunctionFallback');
    }
}
