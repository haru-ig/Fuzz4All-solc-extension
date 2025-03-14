pragma solidity ^0.8.0;
contract MutatedFallback {
    function mutantFunction(bool flag) public payable {
        require(flag);
    }
    function mutantFunctionFallback() public payable {
    }
}
contract Sink {
    function mutantFunction() external payable { }
    fallback() payable { }
}
