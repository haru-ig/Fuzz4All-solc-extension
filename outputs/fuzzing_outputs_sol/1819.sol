pragma solidity ^0.8.0;
contract MutantCaller is Caller {
     function mutantFunction() public {

         mutantFallback();
     }


     function mutantFallback() public { }
}
