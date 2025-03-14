pragma solidity ^0.8.0;
contract Mutated {
    address target;
    constructor(address mutator) {
        target = mutator;
    }
    function setTarget(address _target) public {
        target = _target;
    }
}
