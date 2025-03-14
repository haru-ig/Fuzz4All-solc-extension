pragma solidity ^0.8.0;
contract Mutator2 is Mutator {
    uint public initialBalance;
    constructor() {
        initialBalance = msg.value;
        target.transfer(initialBalance);
    }

    function setTarget(address _target) public {

        super.setTarget(_target);

        target.transfer(initialBalance - msg.value);
    }
}
