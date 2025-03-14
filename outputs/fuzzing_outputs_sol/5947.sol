pragma solidity ^0.8.0;
contract FallbackMutator {
    constructor() {}
    function increase() public {

    }
    receive() external payable {}
}
contract MutatorDemo {
    function doSomething(uint a) public {
        FallbackMutator mutator = new FallbackMutator();
        require(mutator.increase.value(a.mul(14))() == 8);
    }
}
