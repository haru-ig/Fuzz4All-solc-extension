pragma solidity ^0.8.0;
contract MutatorCaller{
    function mutatorCaller()public {
    }
    function fallback() public payable{
        {
            throw;
        }
    }
}
