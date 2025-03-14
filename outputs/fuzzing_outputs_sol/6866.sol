pragma solidity ^0.8.0;

contract Mutator {
    address public target;
    constructor() {
        target = payable(address(0xdead));
    }
    function setTarget(address _target) public {
        target = _target;
    }
}
