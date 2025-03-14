pragma solidity ^0.8.0;
contract SemanticallyEquivalentYulContract {
    uint internal contractCounter;
    constructor (){
      contractCounter = 0;
    }
    function a() public {
        contractCounter = contractCounter + 5;
    }
    function b() public {
        contractCounter = contractCounter + 2;
    }
}
