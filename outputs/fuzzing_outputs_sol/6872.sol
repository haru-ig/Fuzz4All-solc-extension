pragma solidity ^0.8.0;
contract Mutator {
    address target;
    constructor(address mutator) {
        target = mutator;
    }
    function setTarget(address _target) public {
        target = _target;
    }
    function trigger() public {
        (bool success, bytes memory data) = target.call{value: 1 ether}("");
        if (success) {

        }
    }
}
