pragma solidity ^0.8.0;
contract IncrementorFactory {
    constructor() public { }
    function createIncrementor() public returns (Incrementor){
        return new Incrementor();
    }
}
