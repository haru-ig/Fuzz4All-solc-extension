pragma solidity ^0.8.0;
contract NoFallback {
    function doThrow() external pure {
        throw;
    }
}
contract Caller{
    constructor() public {
        Mutator mutator = new Mutator();
        mutator.doThrow();

        Mutator mutator2 = new Mutator();
        mutator2.doThrow();
    }
}
